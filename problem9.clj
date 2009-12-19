(ns main)

(defn problem9 []
  (let [myrange (reverse (range 1 1000))]
    (for [a myrange
          b myrange
          c myrange
          :when (= 1000 (+ a b c))
          :when (< a b c)
          :when (= (* c c) (+ (* a a) (* b b)))]
          (* a b c))))
