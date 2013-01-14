-- "add" function

-- funciton param param2... = function body
add a b = a + b

myNot True = False
myNot False = True

-- [1,2] == (1:(2:[]))
sumList (x:xs) = x + sumList xs
sumList [] = 0