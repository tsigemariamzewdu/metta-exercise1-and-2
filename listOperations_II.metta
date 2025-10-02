; !(superpose (1 2 3 4 5))
; !(collapse(1 2 3 4 5))
; !(cdr-atom (1 2 3 4 5))

;implement map,filter ,findAndRemove and findAndReplace


;map -takes function and list
(=(map $func Nil) Nil)

(=(map $func $list)
  ( $func (superpose $list)))

(=(square $n) (* $n $n))
!(map square (1 2 3 4 5))

;filter-takes function and list
(=(filter $func $list)
    (if ($func (car-atom $list))
        ( superpose((car-atom $list) (filter $func (cdr-atom $list))))
        (filter $func (cdr-atom $list))))


(=(is-even $n) (if (== 0 (% $n 2))True False))
!( filter is-even (1 2 3 4 5)) 

! (== 2 collapse(car-atom(2 2)))

;find and remove
(=(findAndRemove $n $list))





;find and replace 


