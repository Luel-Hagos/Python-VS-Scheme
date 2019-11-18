;Problem:You are working at the cash counter at a fun-fair, 
; and you have different types of coins available to you in infinite quantities.
; The value of each coin is already given. Can you determine the number of ways of making change for a particular number of units using the given types of coins?
; For example, if you have 4 types of coins, and the value of each type is given as 1,2,3,4 respectively,
; you can make change for 3 units in three ways:{1,1,1} ,{1,2} , and{3} .


# Using python
def numWays( numways coin-amount, number-of-coin-types ):
    if numways coin-amount < 0 or len(number-of-coin-types) == 0: 
        return 0
    if numways coin-amount == 0: 
        return 1
    return numWays( numways coin-amount, number-of-coin-types[1:]) + 
    				numWays( numways coin-amount - number-of-coin-types[0], number-of-coin-types )






; Using Scheme
(define (numways coin-amount  number-of-coin-types)
(cond ((= coin-amount 0) 1)
	((or (< coin-amount 0) (= (length number-of-coin-types) 0)) 0)
	(else (+ (countr coin-amount  (cdr number-of-coin-types)) 
	 					(countr (- coin-amount (car number-of-coin-types)) number-of-coin-types)))))