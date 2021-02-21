
main :: IO()
main = do
    print (encode "aaaaaaaaa")
    print (encode "aabdsdddsf")
    print (decode "3ab3f")
    print (decode "12a3b")
    print (decode "aa3b") 
    
--Първа задача
    
--Gets the count of the first N repeating characters of a string
firstRepeatingCharsCount :: String -> Int
firstRepeatingCharsCount [] = 0;
firstRepeatingCharsCount [_] = 1;
firstRepeatingCharsCount (x1:x2:xs)
    | x1 == x2 = 1 + firstRepeatingCharsCount(x2:xs)
    | otherwise = 1
    
--Converts a number to string
numToString :: Int -> String
numToString num
    | num < 10 = show num
    | otherwise = show (num `mod` 10) ++ numToString(num `div` 10)
    
    
encodeResult :: String -> Int -> String
encodeResult input firstN
    | null input = []
    --if we have more than 2 repeating characters at the start of the string add their count
    --and the repeating character's symbol at the start of the result string
    | firstN > 2 = (numToString firstN) ++ [head input]
    --and call the function for the next first N repeating characters of the string
    ++ (encodeResult (drop firstN input) (firstRepeatingCharsCount (drop firstN input))) 
    --else keep the first part of the string the same and call the function for the next N repeating characters of the string
    | otherwise = (take firstN input) ++ (encodeResult (drop firstN input) (firstRepeatingCharsCount (drop firstN input)))

encode :: String -> String
encode str = encodeResult str (firstRepeatingCharsCount str)
    
--Втора задача

--checks if a character is a digit
isDigit :: Char -> Bool
isDigit c = c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6' || c == '7' || c == '8' || c == '9' || c == '0' 

--returns only nums chars at the start of the string
firstNumChars :: String -> String
firstNumChars str
    | null str = []
    | isDigit (head str) = (head str) : firstNumChars(tail str)
    | otherwise = []
    
--converts a string to num
intParse :: String -> Int
intParse str = read str :: Int

--converts a character to a string by repeating it N times 
repeatedChar :: Char -> Int -> String
repeatedChar c n
    | n == 0 = []
    | otherwise = c : repeatedChar c (n - 1)

--replaces the first Number from the string with a character repeating Number times   
replaceNumWithChars :: String -> String -> String
replaceNumWithChars str numStr = (repeatedChar (head (drop (length numStr) str)) (intParse numStr))

decode :: String -> String
decode str
    | null str = []
    | isDigit (head str) = (replaceNumWithChars str (firstNumChars str))
    ++ (decode (drop ((length (firstNumChars str)) + 1) str))
    | otherwise = (head str) : decode (tail str)


    
    

