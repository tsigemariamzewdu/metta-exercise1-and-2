; ;create your own data structure in metta


;list implementation with head tail and append 
(:List type)
(:Nil List)
(:Cons (-> Number List List))


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


;empty tree
(nil)

; node in a tree has a value ,left subtree and right subtree
(node $value $left $right)

;example 
(node 10 (node 5 nil nil) (node 15 nil nil))

;root
(=(root(node $v $l $r)) $v)
;left child
(=(left(node $v $l $r)) $l)
;right child
(=(right(node $v $l $r)) $r)

; 1 traversal

; -Inorder traversal(left ,root,right)
(= (inorder nil) Nil)

(=(inorder(node $v $l $r))
(append (inorder $l)(Cons $v (inorder $r))))

!(inorder (node 10 (node 5 nil nil) (node 15 nil nil)))

;-preorder (root,left,right)
(= (preorder nil) Nil)
(= (preorder (node $v $l $r))
   (append (Cons $v Nil) (append (preorder $l) (preorder $r))))

!(preorder (node 10 (node 5 nil nil) (node 15 nil nil)))

;post-order(left,right,value)
(=(postorder nil) Nil)
(=(postorder (node $v $l $r))
(append(inorder $l) (append(postorder $r)(Cons $v Nil))))

!(postorder(node 10(node 5 nil nil)(node 15 nil nil)))

;bst (binary search tree) operations 
;-insert in to bst
(=(insert $x nil) (node $x nil nil))
(=(insert $x (node $v $l $r))
    (if (<= $x $v)(node $v (insert $x $l) $r)
    (node $v $l (insert $x $r))
))

!(insert 4 (node 5 (node 1 nil nil)(node 7 nil nil)))
    