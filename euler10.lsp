(define (prime? n)
	(and
		(= (length (factor n)) 1)))

(set 'primes '())
(while (< $idx 2000000)
	(if (prime? $idx)
		(push $idx primes)))

(println (apply + primes))
(exit)
