;exercise 1 -represent a given family tree in atomspace

;define gender
(:male (-> Atom));male
(:female(->Atom));female

;define male members in the family tree
(male Chandler)
(male John)
(male Adam)
(male Jane)
(male Bob)
(male Joey)

;define female memebers in the family tree
(female Monica)
(female Pam)
(female Jane)
(female Kim)
(female Eve)

;define links between nodes
(:parent(-> Atom Atom)); parent(a,b) will be read as a is a parent of b

;represent the links
(parent(Chandler, John))

