(set 'l (sequence 999 100))

(define (palindrome-products i rl)
	(filter (fn (x) (= x (reverse (copy x))))
		(map (fn (x) (string (* x i))) rl)))

(set 'products '())
(dolist (i l)
		(push (map int (flat (palindrome-products (l $idx) (slice l $idx)))) products))

(println (apply max (flat products)))
(exit)
