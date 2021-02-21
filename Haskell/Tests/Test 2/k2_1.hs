main :: IO()
main = do
    print (findNb 135440716410000)
    
findNbHelper :: Integer -> Integer -> Integer -> Integer
findNbHelper m nSum n
    | m < 1 || nSum > m = -1
    | m == nSum = n
    | otherwise = findNbHelper m (nSum + (n + 1) ^ 3) (n + 1)

findNb :: Integer -> Integer
findNb m = findNbHelper m 1 1