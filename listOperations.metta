;list implementation with head tail and append
(:List type)
(:Nil List)
(:Cons (-> Number List List))

!(Cons 1(Cons 2(Cons 3 Nil)))
;find head
(=(head Nil) Nil)
(=(head (Cons $x $xs)) $x)

;find tail
(=(tail Nil) Nil)
(=(tail (Cons $x $xs)) $xs)

!(tail(Cons 1(Cons 2(Cons 3 Nil))))

;length
(=(length Nil) 0)
(=(length (Cons $x $xs)) (+ 1 (length $xs)))

 !(length (Cons 1(Cons 2(Cons 3 Nil))))

;is-member
(=(is-member $x Nil) False)
(=(is-member $x (Cons $y $ys))
    (if (== $x $y)
        True
        (is-member $x $ys)))

!(is-member 2 (Cons 1 (Cons 2 (Cons 3 Nil)))) 
!(is-member 5 (Cons 1 (Cons 2 (Cons 3 Nil))))

;append 
(=(append Nil $ys)$ys)
(=(append (Cons $x $xs) $ys)
(Cons $x (append $xs $ys)))
!(append (Cons 1 (Cons 2 (Cons 3 Nil))) (Cons 4 Nil))

; max-value
(=(max-value Nil) -999999) ; default for empty list
(=(max-value (Cons $x Nil)) $x)
(=(max-value (Cons $x $xs))
    (let* (($max-rest (max-value $xs)))
        (if (> $x $max-rest)
            $x
            $max-rest)))

!(max-value (Cons 3 (Cons 1 (Cons 8 (Cons 2 Nil)))))

;min-value
(=(min-value Nil) 999999);default for empty list
(=(min-value (Cons $x Nil)) $x)
(=(min-value (Cons $x $xs))
    (let* (($min-rest (min-value $xs)))
        (if (< $x $min-rest) 
            $x 
            $min-rest)))
!(min-value (Cons 3 (Cons 1 (Cons 4 (Cons 2 Nil)))))

;push-the same as append 

;pop  the last entry
(=(pop  Nil) Nil)
(=(pop (Cons $x $xs))
(if (== $xs Nil) Nil (Cons $x (pop $xs))))
!(pop (Cons 4 (Cons 3 Nil)))

;remove-element



;remove-duplicate




;map