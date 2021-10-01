; Code de l'exercice 1 du TP1 - IA01 A21
; Martin Schneider - Océane Bordeau 

(defun reverseA (arg1 arg2 arg3)
  (list arg3 arg2 arg1)
)

(reverseA 1 2 3)



(defun reverseB (L)
  (if (= (length L) 1) L
    (if (= (length L) 2) (list (cadr L) (car L))
      (if (= (length L) 3) (list (caddr L) (cadr L) (car L)))
    )
  )
)

(reverseB '(3 2 1))



(defun reverseC (L)
  (if (= (length L) 1) L
    (append (reverseC (rest L)) (list (first L)))
    )
  )

(reverseC '(a b (c d) e f))



(defun double (L)
  (if (null L) ()
      (if (atom (first L)) (append (list (first L)) (list (first L)) (double (rest L)))
        (append (list (first L)) (double (rest L)))
        )
    )
  )
(double '((1 2) 3 (4 5) 6))



(defun nombresN (N L)
  (if (> N 0) 
      (if (numberp (car L))
          (nombresN (decf N) (cdr L))
        "PERDU")
      "Bravo"
    )
  )

(nombresN 4  '(1 2 3 R S 4))



(defun reverseC (L)
  (if (= (length L) 1) L
    (append (reverseC (rest L)) (list (first L)))
    )
  )


(defun palindrome (L)
  (if (EQUAL L (reverseC L)) T NIL)
  )

(palindrome  '(x a n a x) )



(defun grouper (L1 L2)
  (if (= (length L1) 1) (list (list (car L1) (car L2)))
      (cons (list (car L1) (car L2)) (grouper (rest L1) (cdr L2)))
    )
  )

(grouper '(1 2 3) '(4 5 6))



(defun monAppend (L1 L2)
  (if (null L1)
      L2
      (cons (car L1) (monAppend (cdr L1) L2))))

(monAppend '(1 2 3) '(4 5))
