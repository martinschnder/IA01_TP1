; Code de l'exercice 4 du TP1 - IA01 A21
; Martin Schneider - Océane Bordeau 

(setq ArbreGot '(((NOM Targaryen) (PRENOM AerysII) (PERE) (MERE))
                 ((NOM Targaryen) (PRENOM Rhaella) (PERE) (MERE))
                 ((NOM Targaryen) (PRENOM Rhaegar) (PERE ((NOM Targaryen)(PRENOM AerysII))) (MERE ((NOM Targaryen)(PRENOM Rhaella))))
                 ((NOM Targaryen) (PRENOM Elia) (PERE) (MERE))
                 ((NOM Targaryen) (PRENOM Rhaenys) (PERE ((NOM Targaryen)(PRENOM Rhaegar))) (MERE ((NOM Targaryen)(PRENOM Elia))))
                 ((NOM Targaryen) (PRENOM Aegon) (PERE ((NOM Targaryen)(PRENOM Rhaegar))) (MERE ((NOM Targaryen)(PRENOM Elia))))
                 ((NOM Targaryen) (PRENOM Viserys) (PERE ((NOM Targaryen)(PRENOM AerysII))) (MERE ((NOM Targaryen)(PRENOM Rhaella))))
                 ((NOM Targaryen) (PRENOM Daenerys) (PERE ((NOM Targaryen)(PRENOM AerysII))) (MERE ((NOM Targaryen)(PRENOM Rhaella))))
                 ((NOM Drogo) (PRENOM Khal) (PERE) (MERE))
                 ((NOM Mormont) (PRENOM Jorah) (PERE) (MERE))))
ArbreGot

(defun getNom (personne) 
  (cadar personne)
  )

(getNom '((NOM Targaryen)(PRENOM Daenerys) (PERE ((NOM Targaryen)(PRENOM AerysII)))(MERE ((NOM Targayen)(PRENOM Rhaella))))) 



(defun getPrenom (personne) 
  (cadadr personne)
  )

(getPrenom '((NOM Targaryen)(PRENOM Daenerys) (PERE ((NOM Targaryen)(PRENOM AerysII)))(MERE ((NOM Targayen)(PRENOM Rhaella))))) 


(defun getPersonne (prenom nom arbre) 
  (if (null arbre) nil 
    (if (and (eq (getPrenom (car arbre)) prenom) (eq (getNom (car arbre)) nom)) (car arbre) (getPersonne prenom nom (cdr arbre))) 
    )
  )

(getPersonne 'Daenerys 'Targaryen ArbreGot)


(defun getPere (personne arbre)
  (getPersonne (car (cdr (car (cdr (car (cdr (car (cdr (cdr personne))))))))) (car (cdr (car (car (cdr (car (cdr (cdr personne)))))))) arbre)
  )

(getPere (getPersonne 'Daenerys 'Targaryen ArbreGot) ArbreGot)


(defun getMere (personne arbre)
  (getPersonne (car (cdr (car (cdr (car (cdr (car (cdr (cdr (cdr personne)))))))))) (car (cdr (car (car (cdr (car (cdr (cdr (cdr personne))))))))) arbre)
  )

(getMere (getPersonne 'Daenerys 'Targaryen ArbreGot) ArbreGot)


(defun getAdelphie (Prenom Nom Arbre)
  (declare (special prenom))
  (declare (special nom))
  (declare (special arbre))
  (setq outputlist ())
  (mapcar '(lambda (xx) 
    (if (and (equal (getPere (getPersonne Prenom Nom Arbre) Arbre) (getPere xx Arbre)) (equal (getMere (getPersonne Prenom Nom Arbre) Arbre) (getMere xx Arbre)) (not (equal xx (getPersonne Prenom Nom Arbre))))
        (setq outputlist (append outputlist (list xx))))
             ) Arbre
    )outputlist
  )


(getAdelphie 'Daenerys 'Targaryen ArbreGOT)