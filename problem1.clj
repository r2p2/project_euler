(ns main)

(defn remainder? [a b] (zero? (mod b a)))

(defn problem1 [max]
  (reduce +
    (filter 
      (fn [x] 
        (or (remainder? 3 x) (remainder? 5 x)))
      (range 1 max))))
