;exercise 1 -represent a given family tree in atomspace

;define gender
(:male (-> Atom));male
(:female(->Atom));female

;define male members in the family tree
(male Chandler)
(male John)
(male Adam)
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
(parent Chandler John)
(parent Monica   John)

(parent Chandler Pam)
(parent Monica   Pam)

(parent Chandler Adam)
(parent Monica   Adam)

(parent Chandler Jane)
(parent Monica   Jane)

(parent John Bob)

(parent Pam Tim)
(parent Pam Kim)

(parent Adam Eve)

(parent Jane Joey)

;exercise 2-implementing match queries for the family tree atomspace

;get parents of John
(match &family 
    (parent $p John) 
$p)

;get the mother of Pam
(match &family 
    (and(parent $m Pam)
    (female $m))
$m)

;get the siblings of Pam
(match &family
    (and (parent $p pam)
    (parent $p $s)
    (not(==$s Pam)))
$s)

;get the uncles of Tim
(match &family 
    (and (parent $p Tim)
    (parent $gp $p)
    (parent $gp $u
    )(not(== $u $p)
    (male $u)))
$u)

;get the nephews of John
(match &family
    (and (parent $p John)
    (parent $p $s)
    (not(==$s John))
    (parent $s $n)
    (male $n))
$n)

;get all predecessors of Bob
(:ancestor (->Atom Atom)) ;ancestor(a,b) will be read as a is ancestor of b

(=(ancestor $x $y))(parent $x $y)
(=(ancestor $x $y)(and (parent $x $z)(ancestor $z $y)))

;query all ancestors of Bob
(match &familly 
    (ancestor $a Bob)
$a)
