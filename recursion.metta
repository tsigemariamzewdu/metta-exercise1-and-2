; let me learn how i can write some recursion
; (=(length ()) 0); if we are passing empty for the length function we should return 0
; (=(length(:: $x $xs)) ;;passing head and tail kind of
; (+ 1 (length $xs))) ; adding one and passing the the rest of the list that is the tail to the length function 
 
; !(length (:: A (:: B (:: c(:: D())))))

 ;;more on recurison

;function to find the sum of all the multiples of 3 or 5 upto some given number


; Find the sum of all the multiples of 3 or 5 upto a certain number
(= (sum-multiple $num $sum)
    (if (> $num 0)
        (if (or (== 0 (% $num 3)) (== 0 (% $num 5)))
            (sum-multiple (- $num 1) (+ $sum $num))
            (sum-multiple (- $num 1) $sum) ;;why this line??
        )
        $sum
    )
)
; Sum of multiples of 3 and 5 upto 10
!(sum-multiple 10 0)

;metta lacks it is own list implementation so we can implement one
;first type declaration
(: List type)
(: Nil List)


(:Cons(-> Number List List)) ;so here what is being said is that conds takes

!(get-type (Cons 1 Nil))
!(Cons 1 (Cons 2 (Cons 3 Nil)))


;first of all  binary tree is a tree data structure in which each node has at most two children referred to as the left child and the right child so yeah it like a linked list
 
