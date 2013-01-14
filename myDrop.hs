-- ch02 myDrop.hs

-- type signature
myDrop :: Int -> [a] -> [a]

myDrop n xs = if n <= 0 || null xs
                then xs     -- branch
                else myDrop (n - 1) (tail xs)   -- branch
-- the two branches need to return the same type                