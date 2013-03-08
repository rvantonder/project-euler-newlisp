(define-macro (range)
	(case (length (args))
		(1 (sequence 0 (dec (first (args)))))
		(2 (sequence (first (args)) (dec (last (args)))))))

(set 'vals 
	(filter 
		(fn (x)
			(or 
				(= (mod x 3))
				(= (mod x 5))))
		(range 1 1000)))

(println (apply + vals))
(exit)
