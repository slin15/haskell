--factorial fxn

fac 0 = 1
fac n = n * fac (n-1)

--types

--infinite lists

[1..]

--built in fxns

take 100 (repeat 5)
take 100 $ repeat 5

tail [1,2,3,4,5]
head [1,2,3,4,5]

-- doesn't work on infinite lists
init [1,2,3,4,5]
last [1,2,3,4,5]

take 100 [x^2 | x <- [1..], even x]

--sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
primes = sieve [2..]
primes !! 1000 

--zip with

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
