





; count number of occurance using scheme 
(define (count l n c) 
		(cond ((null? l) c)
			((= (car l) n) (count (cdr l) n (+ 1 c)))
					(else (count (cdr l) n c))))
; or
(define (countt l n ) 
		(cond ((null? l) 0)
			((= (car l) n) (+ 1 (countt (cdr l) n)))
				(else (countt (cdr l) n ))))

; count number of occurance using python

def Count(L,element):
	if not L:
		return 0
	if L[0]==element:
		return 1+ Count(L[1:],element)
	return Count(L[1:],element)