;prima linie
(deftemplate l11 (slot loc))
(deftemplate l12 (slot loc))
(deftemplate l13 (slot loc))

;a doua linie
(deftemplate l21 (slot loc))
(deftemplate l22 (slot loc))
(deftemplate l23 (slot loc))

;a treia linie
(deftemplate l31 (slot loc))
(deftemplate l32 (slot loc))
(deftemplate l33 (slot loc))

;rand (jucator sau computer)
(deftemplate rand (slot loc))

;asezarea simbolului (X / 0)
(deftemplate asezare (slot asezat))

;baza de fapte (toate locurile sunt libere initial)
(deffacts stare-initiala
    (l11 (loc liber))
    (l12 (loc liber))
    (l13 (loc liber))
    (l21 (loc liber))
    (l22 (loc liber))
    (l23 (loc liber))
    (l31 (loc liber))
    (l32 (loc liber))
    (l33 (loc liber))
    (rand (loc alege))
    (asezare (asezat nu))
)

;I. REGULA PRIN CARE ALEGEM CINE INCEPE JOCUL
(defrule cine_incepe
	(rand (loc alege))
	=>
	(printout t "Cine incepe jocul? (Jucator:X / Calculator:O) ")
	(bind ?rand (read))
	(assert (rand (loc ?rand)))
)

;II. REGULI PENTRU MUTARILE JUCATORULUI
; regula se activeaza atunci cand este randul jucatorului 
(defrule randul_jucatorului (declare (salience 1))
	(rand (loc X))
	?asez <- (asezare (asezat nu))
	=>
	(printout t crlf "Unde doriti sa asezati X ?" crlf)
	(bind ?loc (read))
	(modify ?asez (asezat ?loc))
)

; jucatorul aseaza X pe pozitia l11
(defrule jucator_ocupa_l11 (declare (salience 1))
	(rand (loc X))
	(asezare (asezat l11))
	?loc <- (l11 (loc liber))
	?rand <- (rand (loc X))
	?asez <- (asezare (asezat l11))
	=>
	(modify ?loc (loc X))
	(modify ?rand (loc O))
	(modify ?asez (asezat nu))
	(retract ?asez)
    (printout t "Jucatorul a ocupat l11 cu X." crlf)
)

; jucatorul aseaza X pe pozitia l12
(defrule jucator_ocupa_l12 (declare (salience 1))
	(rand (loc X))
	(asezare (asezat l12))
	?loc <- (l12 (loc liber))
	?rand <- (rand (loc X))
	?asez <- (asezare (asezat l12))
	=>
	(modify ?loc (loc X))
	(modify ?rand (loc O))
	(modify ?asez (asezat nu))
	(retract ?asez)
    (printout t "Jucatorul a ocupat l12 cu X." crlf)
)

; jucatorul aseaza X pe pozitia l13
(defrule jucator_ocupa_l13 (declare (salience 1))
	(rand (loc X))
	(asezare (asezat l13))
	?loc <- (l13 (loc liber))
	?rand <- (rand (loc X))
	?asez <- (asezare (asezat l13))
	=>
	(modify ?loc (loc X))
	(modify ?rand (loc O))
	(modify ?asez (asezat nu))
	(retract ?asez)
    (printout t "Jucatorul a ocupat l13 cu X." crlf)
)

; jucatorul aseaza X pe pozitia l21
(defrule jucator_ocupa_l21 (declare (salience 1))
	(rand (loc X))
	(asezare (asezat l21))
	?loc <- (l21 (loc liber))
	?rand <- (rand (loc X))
	?asez <- (asezare (asezat l21))
	=>
	(modify ?loc (loc X))
	(modify ?rand (loc O))
	(modify ?asez (asezat nu))
	(retract ?asez)
    (printout t "Jucatorul a ocupat l21 cu X." crlf)
)

; jucatorul aseaza X pe pozitia l22
(defrule jucator_ocupa_l22 (declare (salience 1))
	(rand (loc X))
	(asezare (asezat l22))
	?loc <- (l22 (loc liber))
	?rand <- (rand (loc X))
	?asez <- (asezare (asezat l22))
	=>
	(modify ?loc (loc X))
	(modify ?rand (loc O))
	(modify ?asez (asezat nu))
	(retract ?asez)
    (printout t "Jucatorul a ocupat l22 cu X." crlf)
)

; jucatorul aseaza X pe pozitia l23
(defrule jucator_ocupa_l23 (declare (salience 1))
	(rand (loc X))
	(asezare (asezat l23))
	?loc <- (l23 (loc liber))
	?rand <- (rand (loc X))
	?asez <- (asezare (asezat l23))
	=>
	(modify ?loc (loc X))
	(modify ?rand (loc O))
	(modify ?asez (asezat nu))
	(retract ?asez)
    (printout t "Jucatorul a ocupat l23 cu X." crlf)
)

; jucatorul aseaza X pe pozitia l31
(defrule jucator_ocupa_l31 (declare (salience 1))
	(rand (loc X))
	(asezare (asezat l31))
	?loc <- (l31 (loc liber))
	?rand <- (rand (loc X))
	?asez <- (asezare (asezat l31))
	=>
	(modify ?loc (loc X))
	(modify ?rand (loc O))
	(modify ?asez (asezat nu))
	(retract ?asez)
    (printout t "Jucatorul a ocupat l31 cu X." crlf)
)

; jucatorul aseaza X pe pozitia l32
(defrule jucator_ocupa_l32 (declare (salience 1))
	(rand (loc X))
	(asezare (asezat l32))
	?loc <- (l32 (loc liber))
	?rand <- (rand (loc X))
	?asez <- (asezare (asezat l32))
	=>
	(modify ?loc (loc X))
	(modify ?rand (loc O))
	(modify ?asez (asezat nu))
	(retract ?asez)
    (printout t "Jucatorul a ocupat l32 cu X." crlf)
)

; jucatorul aseaza X pe pozitia l33
(defrule jucator_ocupa_l33 (declare (salience 1))
	(rand (loc X))
	(asezare (asezat l33))
	?loc <- (l33 (loc liber))
	?rand <- (rand (loc X))
	?asez <- (asezare (asezat l33))
	=>
	(modify ?loc (loc X))
	(modify ?rand (loc O))
	(modify ?asez (asezat nu))
	(retract ?asez)
    (printout t "Jucatorul a ocupat l33 cu X." crlf)
)

;III REGULI PENTRU MUTARILE CALCULATORULUI
; calculatorul aseaza O in locul l22, daca este liber
(defrule randul_calculatorului (declare (salience 1))
	(l22 (loc liber))
	(rand (loc O))
	?etapa <- (l22(loc liber))
	?rand  <- (rand(loc O)) 
	=>
	(modify ?etapa(loc O))
	(modify ?rand (loc X))
	(printout t "Calculatorul a asezat O pe pozitia l22" crlf )
)

; calculatorul ocupa l11, daca l22 ocupat
(defrule calculator_ocupa_l11 (declare (salience 1))
	(l11 (loc liber))
	(l22 (loc O|X))
	(rand (loc O))
	?etapa <- (l11(loc liber))
	?rand  <- (rand(loc O)) 
	=>
	(modify ?etapa(loc O))
	(modify ?rand (loc X))
	(printout t "Calculatorul a asezat O pe pozitia l11" crlf )
)

; calculatorul ocupa l12, daca l22 ocupat
(defrule calculator_ocupa_l12 (declare (salience 1))
	(l12 (loc liber))
	(l22 (loc O|X))
	(rand (loc O))
	?etapa <- (l12(loc liber))
	?rand  <- (rand(loc O)) 
	=>
	(modify ?etapa(loc O))
	(modify ?rand (loc X))
	(printout t "Calculatorul a asezat O pe pozitia l12" crlf )
)

; calculatorul ocupa l13, daca l22 ocupat
(defrule calculator_ocupa_l13 (declare (salience 1))
	(l13 (loc liber))
	(l22 (loc O|X))
	(rand (loc O))
	?etapa <- (l13(loc liber))
	?rand  <- (rand(loc O)) 
	=>
	(modify ?etapa(loc O))
	(modify ?rand (loc X))
	(printout t "Calculatorul a asezat O pe pozitia l13" crlf )
)

; calculatorul ocupa l21, daca l22 ocupat
(defrule calculator_ocupa_l21 (declare (salience 1))
	(l21 (loc liber))
	(l22 (loc O|X))
	(rand (loc O))
	?etapa <- (l21(loc liber))
	?rand  <- (rand(loc O)) 
	=>
	(modify ?etapa(loc O))
	(modify ?rand (loc X))
	(printout t "Calculatorul a asezat O pe pozitia l21" crlf )
)

; calculatorul ocupa l23, daca l22 ocupat
(defrule calculator_ocupa_l23 (declare (salience 1))
	(l23 (loc liber))
	(l22 (loc O|X))
	(rand (loc O))
	?etapa <- (l23(loc liber))
	?rand  <- (rand(loc O)) 
	=>
	(modify ?etapa(loc O))
	(modify ?rand (loc X))
	(printout t "Calculatorul a asezat O pe pozitia l23" crlf )
)

; calculatorul ocupa l31, daca l22 ocupat
(defrule calculator_ocupa_l31 (declare (salience 1))
	(l31 (loc liber))
	(l22 (loc O|X))
	(rand (loc O))
	?etapa <- (l31(loc liber))
	?rand  <- (rand(loc O))  
	=>
	(modify ?etapa(loc O))
	(modify ?rand (loc X))
	(printout t "Calculatorul a asezat O pe pozitia l31" crlf )
)

; calculatorul ocupa l32, daca l22 ocupat
(defrule calculator_ocupa_l32 (declare (salience 1))
	(l32 (loc liber))
	(l22 (loc O|X))
	(rand (loc O))
	?etapa <- (l32(loc liber))
	?rand  <- (rand(loc O))  
	=>
	(modify ?etapa(loc O))
	(modify ?rand (loc X))
	(printout t "Calculatorul a asezat O pe pozitia l32" crlf )
)

; calculatorul ocupa l33, daca l22 ocupat
(defrule calculator_ocupa_l33 (declare (salience 1))
	(l33 (loc liber))
	(l22 (loc O|X))
	(rand (loc O))
	?etapa <- (l33(loc liber))
	?rand  <- (rand(loc O))  
	=>
	(modify ?etapa(loc O))
	(modify ?rand (loc X))
	(printout t "Calculatorul a asezat O pe pozitia l33" crlf )
)

;III REGULI PENTRU ALEGEREA CASTIGATORULUI
;-------------- III.1 Jucatorul castiga ---------------------
; castig jucator pe prima linie
(defrule castig_jucator_l1 (declare (salience 2))
	(l11 (loc X))
	(l12 (loc X))
	(l13 (loc X))
	=>
	(printout t crlf "Felicitari! Ati castigat pe prima linie :)" crlf )
	(halt)
)

; castig jucator pe a doua linie
(defrule castig_jucator_l2 (declare (salience 2))
	(l21 (loc X))
	(l22 (loc X))
	(l23 (loc X))
	=>
	(printout t crlf "Felicitari! Ati castigat pe a doua linie :)" crlf )
	(halt)
)

; castig jucator pe a treia linie
(defrule castig_jucator_l3 (declare (salience 2))
	(l31 (loc X))
	(l32 (loc X))
	(l33 (loc X))
	=>
	(printout t crlf "Felicitari! Ati castigat pe a treia linie :)" crlf )
	(halt)
)

; castig jucator pe prima coloana
(defrule castig_jucator_c1 (declare (salience 2))
	(l11 (loc X))
	(l21 (loc X))
	(l31 (loc X))
	=>
	(printout t crlf "Felicitari! Ati castigat pe prima coloana :)" crlf )
	(halt)
)

; castig jucator pe a doua coloana
(defrule castig_jucator_c2 (declare (salience 2))
	(l12 (loc X))
	(l22 (loc X))
	(l32 (loc X))
	=>
	(printout t crlf "Felicitari! Ati castigat pe a doua coloana :)" crlf )
	(halt)
)

; castig jucator pe a doua treia
(defrule castig_jucator_c3 (declare (salience 2))
	(l13 (loc X))
	(l23 (loc X))
	(l33 (loc X))
	=>
	(printout t crlf "Felicitari! Ati castigat pe a treia coloana :)" crlf )
	(halt)
)

; castig jucator pe diagonala principala
(defrule castig_jucator_dp (declare (salience 2))
	(l11(loc X))
	(l22 (loc X))
	(l33 (loc X))
	=>
	(printout t crlf "Felicitari! Ati castigat pe diagonala principala :)" crlf )
	(halt)
)

; castig jucator pe diagonala secundara
(defrule castig_jucator_ds (declare (salience 2))
	(l13(loc X))
	(l22 (loc X))
	(l31 (loc X))
	=>
	(printout t crlf "Felicitari! Ati castigat pe diagonala secundara :)" crlf )
	(halt)
)

;-------------- III.2 Calculatorul castiga ---------------------
; castig calculator pe prima linie
(defrule castig_calculator_l1 (declare (salience 2))
	(l11 (loc O))
	(l12 (loc O))
	(l13 (loc O))
	=>
	(printout t crlf "Calculatorul a castigat pe prima linie :(" crlf )
	(halt)
)

; castig calculator pe a doua linie
(defrule castig_calculator_l2 (declare (salience 2))
	(l21 (loc O))
	(l22 (loc O))
	(l23 (loc O))
	=>
	(printout t crlf "Calculatorul a castigat pe a doua linie :(" crlf )
	(halt)
)

; castig calculator pe a treia linie
(defrule castig_calculator_l3 (declare (salience 2))
	(l31 (loc O))
	(l32 (loc O))
	(l33 (loc O))
	=>
	(printout t crlf "Calculatorul a castigat pe a treia linie :(" crlf )
	(halt)
)

; castig calculator pe prima coloana
(defrule castig_calculator_c1 (declare (salience 2))
	(l11 (loc O))
	(l21 (loc O))
	(l31 (loc O))
	=>
	(printout t crlf "Calculatorul a castigat pe prima coloana :(" crlf )
	(halt)
)

; castig calculator pe a doua coloana
(defrule castig_calculator_c2 (declare (salience 2))
	(l12 (loc O))
	(l22 (loc O))
	(l32 (loc O))
	=>
	(printout t crlf "Calculatorul a castigat pe a doua coloana :(" crlf )
	(halt)
)

; castig calculator pe a doua treia
(defrule castig_calculator_c3 (declare (salience 2))
	(l13 (loc O))
	(l23 (loc O))
	(l33 (loc O))
	=>
	(printout t crlf "Calculatorul a castigat pe a treia coloana :(" crlf )
	(halt)
)

; castig calculator pe diagonala principala
(defrule castig_calculator_dp (declare (salience 2))
	(l11 (loc O))
	(l22 (loc O))
	(l33 (loc O))
	=>
	(printout t crlf "Calculatorul a castigat pe diagonala principala :(" crlf )
	(halt)
)

; castig calculator pe diagonala secundara
(defrule castig_calculator_ds (declare (salience 2))
	(l13 (loc O))
	(l22 (loc O))
	(l31 (loc O))
	=>
	(printout t crlf "Calculatorul a castigat pe diagonala secundara :(" crlf )
	(halt)
)

;IV REMIZA
(defrule remiza (declare (salience 2))
	(l11 (loc O|X))
	(l12 (loc O|X))
	(l13 (loc O|X))
	(l21 (loc O|X))
	(l22 (loc O|X))
	(l23 (loc O|X))
	(l31 (loc O|X))
	(l32 (loc O|X))
	(l33 (loc O|X))
	=>
	(printout t crlf "Remiza!" crlf )
	(halt)
)
