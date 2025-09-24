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

;append to the list
(=(append Nil $ys)$ys)
(=(append (Cons $x $xs) $ys)
(Cons $x (append $xs $ys)))

!(append (Cons 1 (Cons 2 (Cons 3 Nil))) (Cons 4 Nil))
