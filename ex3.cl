; Code de l'exercice 3 du TP1 - IA01 A21
; Martin Schneider - Océane Bordeau 

(defun my-assoc (cle a-list)
  (if (null a-list) nil
    (if (EQ (caar a-list) cle) (cdar a-list) (my-assoc cle (cdr a-list)))
    )
  )

(my-assoc 'Yolande '((Yolande  25) (Pierre  22) (Julie  45)))



(defun cles (a-list)
  (mapcar '(lambda (xx) (car xx)) a-list)
  )

(cles '((Yolande  25) (Pierre  22) (Julie  45)))



(defun creation (listeCles listeValeurs)
  (mapcar '(lambda (xx yy) (list xx yy)) listeCles listeValeurs)
  )

(creation '(Yolande Pierre Julie) '(25 22 45))
