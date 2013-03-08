(set 'p '(2 3 5 7 11 13 17 19))
(set 'l (map factor (sequence 2 20)))
(set 'r '())

(set 's (map (fn (x) (apply max x)) 
	(transpose 
		(dolist (i l) 
			(extend r (list (count p i)))))))

(println (apply * (map pow p s)))
(exit)
