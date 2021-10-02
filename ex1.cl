; Code de l'exercice 1 du TP1 - IA01 A21
; Martin Schneider - Océane Bordeau 

; Fonction reverseA
(defun reverseA (arg1 arg2 arg3)
  (list arg3 arg2 arg1)
)

(reverseA 1 2 3)


; Fonction reverseB
(defun reverseB (L)
  (if (= (length L) 1) L
    (if (= (length L) 2) (list (cadr L) (car L))
      (if (= (length L) 3) (list (caddr L) (cadr L) (car L)))
    )
  )
)

(reverseB '(3 2 1))


;Fonction reverseC
(defun reverseC (L)
  (if (= (length L) 1) L
    (append (reverseC (cdr L)) (list (car L)))
    )
  )

(reverseC '(a b (c d) e f))


; Fonction double
(defun double (L)
  (if (null L) ()
      (if (atom (car L)) (append (list (car L)) (list (car L)) (double (cdr L)))
        (append (list (car L)) (double (cdr L)))
        )
    )
  )
(double '((1 2) 3 (4 5) 6))


; Fonction nombresN
(defun nombresN (N L)
  (if (> N 0) 
      (if (numberp (car L))
          (nombresN (decf N) (cdr L))
        "PERDU")
      "Bravo"
    )
  )

(nombresN 4  '(1 2 3 R S 4))


; Fonction palindrome
(defun reverse (L)
  (if (= (length L) 1) L
    (append (reverse (cdr L)) (list (car L)))
    )
  )


(defun palindrome (L)
  (if (EQUAL L (reverse L)) T NIL)
  )

(palindrome  '(x a n a x) )


; Fonction grouper
(defun grouper (L1 L2)
  (if (= (length L1) 1) (list (list (car L1) (car L2)))
      (cons (list (car L1) (car L2)) (grouper (cdr L1) (cdr L2)))
    )
  )

(grouper '(1 2 3) '(4 5 6))


; Fonction monAppend
(defun monAppend (L1 L2)
  (if (null L1)
      L2
      (cons (car L1) (monAppend (cdr L1) L2))))

(monAppend '(1 2 3) '(4 5))
