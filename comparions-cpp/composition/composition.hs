f :: Int -> Int
f x = x + 10

g :: Int -> Int
g x = x * x

main = print $ map (g . f) [1, 2, 3]