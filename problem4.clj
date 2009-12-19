(ns main)

(defn mirror 
  ([number]
    (mirror number 0))
  ([number result]
    (if (zero? number)
      result
      (let [nnumber (int (/ number 10))
            nresult (+ (* result 10) (mod number 10))]
        (recur nnumber nresult))))) 

(defn palindromic? [number]
  (= number (mirror number)))

  
(defn problem4 [] 
  (let [myrange (reverse (range 100 999))]
    (sort (for [a myrange 
                b myrange 
                :when (palindromic? (* a b))]
                (* a b)))))
                
