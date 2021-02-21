main :: IO()
main = do
        --Първа задача
        print(countInteresting t1)
        print(countInteresting t2)
        --Втора задача
        print(getAverageBalance (accounts1,people1) (\ (_,_,city) -> city == "Burgas"))
        print(getAverageBalance (accounts1,people1) (\ (_,(n:_),_) -> n == 'P'))
        print (averageBalanceOfCities (accounts1,people1) ["Sofia","Gabrovo","Stara Zagora"])

--Първа задача
        
data BTree = Empty | Node Int BTree BTree

t1 :: BTree 
t1 = Node 16 (Node 0 Empty Empty) 
             (Node 4 (Node 1 Empty Empty)
                     (Node 0 Empty Empty))
 
t2 :: BTree 
t2 = Node 4 (Node 0 Empty Empty) 
            (Node 2 (Node 1 Empty Empty) 
                     Empty)

--returns 0 if the tree is empty and 1 otherwise
size :: BTree -> Int
size Empty = 0
size (Node _ _ _) = 1

--checks if x is equal to 2^k, where k = (ltSize + rtSize),
--where ltSize and rtSize are the sizes of the direct childs count of the node
isInteresting :: Int -> Int -> Int -> Int
isInteresting x ltSize rtSize
    | x == (2 ^ (ltSize + rtSize)) = 1
    | otherwise = 0


countInteresting :: BTree -> Int
countInteresting Empty = 0
--call this function for the left and right subtrees and add 1 or 0 depending on wheter the current node is iteresting or not
countInteresting (Node x lt rt) = (isInteresting x (size lt) (size rt)) + (countInteresting lt) + (countInteresting rt) 
        
--Втора задача

type Account = (Int, Int, Double)
type Person = (Int, String, String)

people1 = [(1,"Ivan","Sofia"),(2,"Georgi","Burgas"),(3,"Petar","Plovdiv"),(4,"Petya","Burgas")]
accounts1 = [(1,1,12.5),(2,1,123.2),(3,2,13.0),(4,2,50.2),(5,2,17.2),(6,3,18.3),(7,4,19.4)]

--returns a list of people which meet the given predicate
filterPeople :: (Person -> Bool) -> [Person] -> [Person]
filterPeople f people = [x | x <- people, f x]

--returns the average sum from a list of numbers
averageSum :: [Double] -> Double
averageSum accountsBalances
    | length accountsBalances == 0 = 0
    | otherwise = (sum accountsBalances) / (fromIntegral (length accountsBalances))

--returns the accounts which ids match those of the given people ids
getMatchedAccounts :: ([Account], [Person]) -> [Double]
getMatchedAccounts (accounts, people) = [balance | (pId, _, _) <- people, (_, aId, balance) <- accounts, aId == pId]

getAverageBalance :: ([Account],[Person]) -> (Person -> Bool) -> Double
getAverageBalance (accounts, people) f = averageSum (getMatchedAccounts (accounts, filterPeople f people))

averageBalanceOfCities :: ([Account],[Person]) -> [String] -> Double
averageBalanceOfCities (accounts, people) cities = sum [getAverageBalance (accounts, people) (\ (_,_,city) -> city == c) | c <- cities]

