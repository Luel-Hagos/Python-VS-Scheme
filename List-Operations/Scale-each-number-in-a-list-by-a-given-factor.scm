; multiply a list by a given factor using scheme
(define (multiply-by-factor l factor)
	(if (null? l) '()
		(cons (* (car l) 10) (multiply-by-factor (cdr l) factor))))


; using map in scheme
(define (multiply_by_factor l factor)(map (lambda (x) (* x factor)) l))






; multiply a list by a given factor using python
def multiply_by_factor(l,factor):
	if not l:
		return []
	return [(l[0]*factor)] + multiply_by_factor(l[1:],factor)


	
; using map in python
def multiply_by_factor(l,factor):
	return list(map(lambda x:x*factor,l))