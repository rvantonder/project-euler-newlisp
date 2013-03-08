(define (collatz n)
	(set 'c 0)
	(until (= n 1)
		(inc c)
		(if 
			(= 0 (% n 2)) (set 'n (/ n 2))
		  (= 1 (% n 2))	(set 'n (+ 1 (* n 3)))))
	(inc c))
		
(println 
		(find 525
		(map collatz (sequence 1 1000000))))

(exit)
