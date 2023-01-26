https://tutorcs.com
WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
#| Question 5.

The function allsubsets takes a single list L and returns a list of all subsets of L.
The order of subsets in the resulting list is unimportant.

(Comment: I need two helper functions get-even and get-odd defined above.
    To me, this description is not sufficiently clear, so I added test cases below to help explain)
 
 test cases:
 (allsubsets nil) => (nil)
 (allsubsets '(a)) => (nil (a))
 (allsubsets '(a b)) => (nil (a) (b) (a b))
 
|#

#| Question 7(a).

The function reached takes a web page element x and a list L with pairs representing linkage
and returns a list of all web pages that can be reached from x (x is not included in result)
The order of the web pages in the resulting list is unimportant.

(Comment: To me, this description is not sufficiently clear, so I added test cases below to help explain)
 
 test cases:
 (reached 'A '( (A B) (A C) (D C))) => (B C)
 (reached 'A '( (A B) (B C) (C A) ) ) => (B C)
 (reached 'A '( (A B) (B C) (C D) )) => (B C D)
 (reached 'A '( (A B) (A C) (D C) (C E) (A A) )) => (B C E)
 
|#

#| Question 7(b).

The function rank takes a list S with atoms naming web pages and a list L with pairs representing linkage inside.
and returns a permutation of S such that the web pages are ordered according to the criterion,
i.e., the most referenced web page is the first in the list, and so on.
If two web pages are equally important in terms of references, then it doesn't matter how they are ordered.

(Comment: To me, this description is not sufficiently clear, so I added test cases below to help explain)
 
 test cases:
 (rank '(A B C D) '((A B) (A C) (D C))) => (C B A D)
 (rank '(A B C) '((A B) (B C) (C A))) => (A B C)
 (rank '(A B C D) '((A B) (B C) (C D))) => (B C D A)
 (rank '(A B E C F) '((A B) (A E) (C E) (E F) (A A))) => (E B F A C)
 
|#


Only the following built-in Lisp functions and special forms may be used:

(atom x)
(null x)
(eq x y)
(equal x y)
(numberp x)
(append x y)
(car x)
(cdr x)
(cons x y) 
(if x y z)
(cond ... ) 
(let ((x y) (u v)) z)
(let* ((x y) (u v)) z)
(defun ...)
(quote x) and its short form 'x
(list x1 x2 ...)
(print ...)                                                                      
(sort L fun) % this is usefulfor the last problem

and numeric operators and comparisons, and logic connectives such as

(+ x y)
(- x y)
(* x y)
(/ x y)
(< x y)
(> x y)
(= x y)
(<= x y)
(>= x y)
(and x y)
(or x y)
(not x)
You may also use a combination of car and cdr, such as

(cadr ...), (cdaar ...)
etc.

