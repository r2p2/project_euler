package main

import (
    "fmt"
    "math"
)

func primes(max int) chan int {
    channel := make(chan int, 1024)
    sieve := make([]bool, max)
    
    go func () {
        for index, current := range sieve {
            if current == false {
                step := index+2; channel <- step

                for kill_index := index; kill_index < max; kill_index += step {
                    sieve[kill_index] = true
                }
            }
        }
        close(channel)
    }()

    return channel
}

func prime_factors(number uint64) chan int {
    channel := make(chan int, 1024)

    go func () {
        max := int(math.Sqrt(float64(number)))
        primes := primes(max)
        for prime := range primes {
            if number%uint64(prime) == 0 {
                channel <- prime
            }
        }
        close(channel)
    }()

    return channel
}

func main() {
    prime_factors := prime_factors(600851475143)
    var max_prime int
    for prime := range prime_factors {
        max_prime = prime
    }
    fmt.Println(max_prime)
}
