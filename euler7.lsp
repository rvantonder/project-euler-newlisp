(define (prime? n)
	(and 
		(= (length (factor n)) 1)))

(set 'primes '())
(while (< $idx 130000)
	(if (prime? $idx)
		(push $idx primes)))

(println (length primes))
(println ((reverse (copy primes)) 10000))

(exit)
