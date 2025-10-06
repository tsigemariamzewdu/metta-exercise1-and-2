; !(superpose (1 2 3 4 5))
; !(collapse(1 2 3 4 5))
; !(cdr-atom (1 2 3 4 5))

;implement map,filter ,findAndRemove and findAndReplace


;map -takes function and list
(: map (-> (-> Number Number) Atom Atom ))

(=(map $func $list)
  ( collapse($func (superpose $list))))

(=(square $n) (* $n $n))
!(map square (1 2 3 4 5))

(: filter (-> (-> Number Bool) Atom Atom))

;filter-takes function and list
(= (filter $func $list)
   (collapse
      (let $x (superpose $list)
           (if ($func $x) $x (empty)))))

(=(is-even $n) (if (== 0 (% $n 2))True False))
!( filter is-even (1 2 3 4 5)) 

(: findAndRemove (-> Number Atom Atom))
;find and remove
(= (findAndRemove $n $list)
   (collapse
      (let $x (superpose $list)
           (if (== $n $x) (empty) $x))))


!(findAndRemove 4 (1 2 3 4))

(: findAndReplace (-> Number Number Atom Atom))
;find and replace 
(= (findAndReplace $n $x $list)
   (collapse
      (let $y (superpose $list)
           (if (== $n $y) $x $y))))



!(findAndReplace 2  5 (1 2 3 4))
;!(get-type (collapse( 1 2 3 4 5)))
