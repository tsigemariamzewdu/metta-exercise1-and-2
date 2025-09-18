; put you code here
; exercise 1
;this meTTa code is written to represent a given family tree in atomspace(hypergraph database)
;define gender
(:male(-> Atom)) ;male
(:female(-> Atom)); female

;male family members
(male Chandler)
(male John)
(male Adam)
(male Bob)
(male Tim)
(male Joey)

;female family members
(female Monica)
(female Pam)
(female Jane)
(female Kim)
(female Eve)   

;define links or relationships between the nodes






(Chandler Parent John)
(Chandler Parent Pam)
(Chandler Parent Adam)
(Chandler Parent Jane)
(Monica Parent Pam)
(Monica Parent Adam)
(Monica Parent John)
(Monica Parent Jane)
(John Parent Bob)
(Pam Parent Tim)
(Pam Parent Kim)
(Adam Parent eve)
(Jane Parent Joey)
;; the familly represenataion is done but i need to add the information of their gender

