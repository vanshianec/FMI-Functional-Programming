main :: IO()
main = do
    print (dominates (+4) (*2) [1..4])
    print (dominates (+4) (*2) [1..5])
    
    
dominates :: (Int -> Int) -> (Int -> Int) -> [Int] -> Bool
dominates f g arr = (length arr) == (length [x | x <- arr, (f x) >= (g x)]) 

