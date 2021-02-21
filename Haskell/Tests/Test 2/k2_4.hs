main :: IO()
main = do
        print(isBinarySearchTree t1)
        print(isBinarySearchTree t2)
        print(isBinarySearchTree t3)

t1 :: BTree 
t1 = Node 8 (Node 3 (Node 1 Empty Empty) 
 (Node 4 Empty Empty)) 
 (Node 10 (Node 9 Empty Empty) 
 (Node 14 Empty Empty))
 
t2 :: BTree 
t2 = Node 8 (Node 3 (Node 1 Empty Empty) 
 (Node 4 Empty Empty)) 
 (Node 10 (Node 5 Empty Empty) 
 (Node 14 Empty Empty))
 
t3 :: BTree 
t3 = Node 8 (Node 3 (Node 5 Empty Empty) 
 (Node 6 Empty Empty)) 
 (Node 10 (Node 9 Empty Empty) 
 (Node 14 Empty Empty)) 

data BTree = Empty | Node Int BTree BTree

minEl :: BTree -> Int -> Int
minEl Empty x = x;
minEl (Node el Empty Empty) x = min el x
minEl (Node el lt rt) x = min (minEl lt x) (minEl rt x)

maxEl :: BTree -> Int -> Int
maxEl Empty x = x;
maxEl (Node el Empty Empty) x = max el x
maxEl (Node el lt rt) x = max (maxEl lt x) (maxEl rt x)

isBinarySearchTree :: BTree -> Bool
isBinarySearchTree Empty = True
isBinarySearchTree (Node _ Empty Empty) = True
isBinarySearchTree (Node x lt rt) = (maxEl lt (x - 1)) < x && (minEl rt x) >= x && isBinarySearchTree lt && isBinarySearchTree rt