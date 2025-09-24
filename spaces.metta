;create a new space
;bindd! new-space so we put bind and then put the new space name
!(bind! $enku-family (new-space))
!(bind! $tsige-family (new-space))

;add a new member
;we use add-atom
!(add-atom $enku-family (parent Ema Enku))

;remove atom  using remove-atom
; and there is no built in update atom so we have write one using let let*
