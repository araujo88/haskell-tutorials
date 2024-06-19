reverseString :: String -> String
reverseString [] = []
reverseString (x : xs) = reverseString xs ++ [x]

main :: IO ()
main = do
  print (reverseString "Leonardo")