
; remove an element from a list
(define (remove L x)
        (cond((null? L) L)
                ((= x (car L)) (cdr L))
                (else (cons (car L) (remove (cdr L) x)))))




; other-way
(define remove
  (lambda (L x)
    (if (null? L)
        L
        (if (equal? (car L) x)
            (cdr L)
            (cons (car L) (remove x (cdr L)))))))



; using python
def remove(L,x): 
   ...:     if not L: 
   ...:         return [] 
   ...:     if L[0]==x: 
   ...:         return L[1:] 
   ...:     return [L[0]]+remove(L[1:],x)