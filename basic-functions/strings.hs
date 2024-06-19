reverseString :: String -> String
reverseString [] = []
reverseString (x : xs) = reverseString xs ++ [x]

reverseString2 :: String -> String
reverseString2 str = foldr (\x xs -> xs ++ [x]) [] str

main :: IO ()
main = do
  print (reverseString "Leonardo")
  print (reverseString2 "Leonardo")
