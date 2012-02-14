package main

import (
    "fmt"
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

func main() {
    primes := primes(2000000)
    var sum uint64

    for prime := range primes {
        sum += uint64(prime)
    }

    fmt.Println(sum)
}
