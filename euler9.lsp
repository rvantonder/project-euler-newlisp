(dolist (a (sequence 1 1000))
	(dolist (b (sequence a 1000))
		(set 'c (sqrt (+ (pow a 2) (pow b 2))))
		(if (and 
				(= (add a b c) 1000)
				(< a b c))
					 (println a " " b " " c " " (* a b c)))))
(exit)
