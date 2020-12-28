main :: IO()
main = do
    print (mymin 15 22)
    print (isInside 7 1 11)
    print (myFunc 2 3)
    print (myFib 6)
    print (myFibIter 6)
    print (myGcd 164 48)
    print (myMaxDivisor 96)
    print (sumOdd 1 9)
    print (isPrime 113)
    print (countPalindromes 121 122)
    print (countPalindromes 10 22)
    print (countDivisors 100)

    
mymin :: Int -> Int -> Int
mymin a b = if a < b then a else b
    
isInside :: Int -> Int -> Int -> Bool
isInside x a b = a <= x && x <= b

myFunc :: Double -> Double -> Double
myFunc a b = average (square a) (square b)
    where
        average a b = (a + b) / 2
        square x = x * x
        
myFib :: Int -> Int
myFib n
    | n == 0 = 1
    | n == 1 = 1
    | otherwise = myFib(n - 1) + myFib(n - 2)
    
myFibIter :: Int -> Int
myFibIter n = helper 1 1 (n - 2)
    where
        helper prev next n
            | n < 0 = next
            | otherwise = helper next (next + prev) (n - 1)
            
myGcd :: Int -> Int -> Int
myGcd a b
    | b == 0 = a
    | otherwise = myGcd b (rem a b)
    
myMaxDivisor :: Int -> Int
myMaxDivisor x = helper 1 1
    where
        helper count d
            | (count + 1) == x = d
            | (rem x count) == 0 = helper (count + 1) count
            | otherwise = helper (count + 1) d
            
sumOdd :: Int -> Int -> Int
sumOdd a b 
        | a > b = 0
        | a `mod` 2 == 1 = a + sumOdd (a + 1) b
        | otherwise = sumOdd (a + 1) b
            
isPrime :: Int -> Bool

isPrime 1 = False
isPrime n = helper 2
    where
        helper d
            | n == d = True
            | n `mod` d == 0 = False
            | otherwise = helper (d + 1)
            
            
countPalindromes :: Int -> Int -> Int
countPalindromes a b
    | a > b = 0
    | isPalindrome a = 1 + countPalindromes (a + 1) b
    | otherwise = countPalindromes (a + 1) b
        where
            isPalindrome num = rev num 0 == num
                where
                    rev n res 
                        | n < 10 = res * 10 + n
                        | otherwise = rev (n `div` 10) (res * 10 + n `mod` 10)


countDivisors :: Int -> Int
countDivisors n = helper 1
    where
        helper d
            | d > n = 0
            | n `mod` d == 0 = 1 + helper (d + 1)
            | otherwise = helper(d + 1)





























 

