; !(superpose (1 2 3 4 5))
; !(collapse(1 2 3 4 5))
;implement map,filter ,findAndRemove and findAndReplace
; !(cdr-atom (1 2 3 4 5))

;;superpose is basically a mao

;map -takes function and list
(=(map $func Nil) Nil)

(=(map $func $list)
  ( $func (superpose $list)))

(=(square $n) (* $n $n))
 !(map square (1 2 3 4 5))
 !(square (superpose (1 2 3 4 5)))
