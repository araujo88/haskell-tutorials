distance :: (Float, Float) -> (Float, Float) -> Float
distance (x1, y1) (x2, y2) = sqrt ((x2-x1)^2 + (y2-y1)^2)

timeDecomposition :: Int -> (Int, Int, Int)
timeDecomposition seconds = (h, m, s)
    where
        h = div seconds 3600
        m = div (mod seconds 3600) 60
        s = mod seconds 60

main = do
    print "hello world"