main :: IO()
main = do
    print 1
    print [1, 2, 3]
    print (0:[1,2,3])
    print [0]
    print ([1,2] ++ [3,4])
    print ([1,2,3] ++ [4])
    print ([2 * x | x <- [1..10], even x])
    print ([(x, y) | x <- [1, 2, 3], y <- [4, 5]])
    print (incrementAllBy [1, 2, 3] 2)
    print (incrementAllBy2 [1, 2, 3] 2)
    print (multiplyAllBy [1, 2, 3] 2)
    print (multiplyAllBy2 [1, 2, 3] 2)
    print (filterSmallerThan [1, 2, 3, 4, 5] 4)
    print (isAscending 12345)
    print (isAscending 12325)
    print (isAscending 3)
    print (isAscending 987)
    
    
incrementAllBy:: [Int] -> Int -> [Int]
incrementAllBy xs el
    | null xs = []
    | otherwise = (head xs + el) : incrementAllBy (tail xs) el
    
incrementAllBy2:: [Int] -> Int -> [Int]
incrementAllBy2 xs el = [x + el | x <- xs]

multiplyAllBy:: [Int] -> Int -> [Int]
multiplyAllBy xs el
    | null xs = []
    | otherwise = (head xs * el) : multiplyAllBy (tail xs) el
    
multiplyAllBy2:: [Int] -> Int -> [Int]
multiplyAllBy2 xs el = [x * el | x <- xs]

filterSmallerThan:: [Int] -> Int -> [Int]
filterSmallerThan xs el = [x | x <- xs, x < el]

numToList:: Int -> [Int]
numToList num
    | num < 10 = [num]
    | otherwise = (num `mod` 10) : numToList (num `div` 10)
    
isAscendingHelper:: [Int] -> Bool
isAscendingHelper xs
    | null (tail xs) = True
    | (head xs) > (head (tail xs)) = False
    | otherwise = isAscendingHelper (tail xs)
    
isAscending:: Int -> Bool
isAscending num = isAscendingHelper (reverse (numToList num))

