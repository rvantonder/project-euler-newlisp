(set 'x (sequence 1 100))

(println (- 
	(pow (apply + x) 2)
	(apply + (map (fn (x) (pow x 2)) x))))

(exit)
