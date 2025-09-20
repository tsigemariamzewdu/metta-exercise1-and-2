;exercise 1 -represent a given family tree in atomspace
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
!(unique(match &self 
    (parent $p John) 
$p))

;get the mother of Pam
!(unique(match &self 
    (,(parent $m Pam)
    (female $m))
$m))

;get the siblings of Pam
!(unique(match &self
    (, (parent $p pam)
    (parent $p $s)
    
$s))

;get the uncles of Tim
!(unique(match &self 
    (, (parent $p Tim)
    (parent $gp $p)
    (parent $gp $u)
    (male $u)))
$u))

;get the nephews of John
!(unique(match &self
    (, (parent $p John)
    (parent $p $s)
    (parent $s $n)
    (male $n))
$n))

;get all predecessors of Bob




