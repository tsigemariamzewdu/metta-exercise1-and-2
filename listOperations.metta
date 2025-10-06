;list implementation with head tail and append
(: List type)
(: Nil List)
(: Cons (-> Number List List))


!(get-type (Cons 1( Cons 2 Nil)))
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

(: is-member (-> Number List Bool))

(=(is-member $x Nil) False)
(=(is-member $x (Cons $y $ys))
    (if (== $x $y)
        True
        (is-member $x $ys)))
;!(is-member "abebe" (Cons 1 (Cons 2 (Cons 3 Nil)))) 
!(is-member 5 (Cons 1 (Cons 2 (Cons 3 Nil))))

;append 
(=(append Nil $ys)$ys)
(=(append (Cons $x $xs) $ys)
(Cons $x (append $xs $ys)))
 !(append (Cons 1 (Cons 2 (Cons 3 Nil))) (Cons 4 Nil))

; max-value
(=(max-value Nil) -999999) ; default for empty list
(=(max-value (Cons $x $xs))
(if (== $xs Nil) $x 
    (let* (($max-rest (max-value $xs)))
        (if (> $x $max-rest)
            $x
            $max-rest))))

!(max-value (Cons 3 (Cons 1 (Cons 8 (Cons 2 Nil)))))

;min-value
(=(min-value Nil) 999999);default for empty list

(=(min-value (Cons $x $xs))
(if (== $xs Nil) $x 
    (let* (($min-rest (min-value $xs)))
        (if (< $x $min-rest) 
            $x 
            $min-rest))))
 !(min-value (Cons 3 (Cons 1 (Cons 4 (Cons 2 Nil)))))
;push-same as append 

;pop  the last entry
(=(pop  Nil) Nil)
(=(pop (Cons $x $xs))
   (if (== $xs Nil)
       (Cons $x Nil) 
       (Cons (head (pop $xs)) (Cons $x (tail (pop $xs)))))) ; recurse

!((head(pop( Cons 4(Cons 3 (Cons 5 Nil))))) (tail(pop( Cons 4(Cons 3 (Cons 5 Nil))))))
;remove-element
(=(remove-element $x Nil) Nil)
(=(remove-element $x (Cons $y $ys))
(if (== $x $y) $ys ( Cons $y (remove-element $x $ys))))
 !(remove-element 3 (Cons 4 (Cons 3 Nil)))

;remove-duplicate
(=(remove-duplicate Nil) Nil)
(=(remove-duplicate (Cons $x $xs))
(if (is-member $x $xs) (remove-duplicate $xs) (Cons $x (remove-duplicate $xs))))
 !(remove-duplicate (Cons 3 (Cons 1 (Cons 3 (Cons 2 Nil)))))

;map -takes function and list
(=(map $func Nil) Nil)
(=(map $func (Cons $x $xs)) (Cons ($func $x) (map $func $xs)))

(=(square $n) (* $n $n))
 !(map square (Cons 1 (Cons 2 (Cons 3 Nil))))

;filter

(=(filter $func Nil) Nil)
(=(filter $func (Cons $x $xs))
    (if ($func $x) (Cons $x (filter $func $xs)) (filter $func $xs)))

(=(is-even $n) (if (== 0 (% $n 2))True False))
;!(is-even 3)
!(filter is-even (Cons 1 (Cons 2 (Cons 3 Nil))))

;sort

;helper function insert- to insert in sorted list
(=(insert $x Nil) (Cons $x Nil))
(=(insert $x (Cons $y $ys)) (if (<= $x $y) (Cons $x (Cons $y $ys)) (Cons $y (insert $x $ys))))

(=(sort Nil) Nil)
(=(sort (Cons $x $xs))(insert $x (sort $xs)))

; !(sort (Cons 4 (Cons 3 Nil)))

;reverse
(=(reverse Nil) Nil)
(=(reverse (Cons $x $xs))
(append (reverse $xs) (Cons $x Nil)))

 !(reverse (Cons 4 (Cons 3 Nil)))

