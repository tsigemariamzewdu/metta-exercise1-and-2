; !(superpose (1 2 3 4 5))
; !(collapse(1 2 3 4 5))
; !(cdr-atom (1 2 3 4 5))

;implement map,filter ,findAndRemove and findAndReplace


;map -takes function and list

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

! (superpose((cdr-atom(1 2 3))))
; !(car-atom (superpose(1 2 3)))

;find and remove
(=(findAndRemove $n $list)
    (if (== (superpose($n))  (car-atom $list))
        (cdr-atom $list)
        ( superpose ((car-atom $list ) (findAndRemove $n (cdr-atom $list))))))


!(findAndRemove 4 (1 2 3 4))

;find and replace 
(=(findAndReplace $n $x $list)
    (if (== (superpose($n))  (car-atom $list))
        (superpose ($x (cdr-atom $list)))
        ( superpose ((car-atom $list ) (findAndReplace $n $x (cdr-atom $list))))))


!(findAndReplace 2  5 (1 2 3 4))


