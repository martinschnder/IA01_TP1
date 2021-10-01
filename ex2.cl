; Code de l'exercice 2 du TP1 - IA01 A21
; Martin Schneider - Océane Bordeau

(defun list-triple-couple (L)
  (mapcar '(lambda (xx) (list xx (* xx 3))) L)
  )
(list-triple-couple '(0 2 3 11)) 