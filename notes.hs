-- ghci -> haskell interactive console

:set prompt "alba> " 	-- change the prompt
(+) 2 3 	-- add the two numbers
[1,2,3] ++ [4,5] 	-- add the two lists
2 /= 3 		-- True
-- exponential
2 ^ 3
-- exponential 
2 ** 2.3

--  lost notes before (from page 12)   --
--  --  --  --  --  --  --  --  --  -- --

:set +t      -- show more information about the type of the variables
:unset + t 	 -- hide the extra information of types
:type 'a'	 -- type information of 'a'
:type it 	 -- the same for the last expression: it

-- String and [Char] are synonyms
-- it is the las expression value in ghci

:m + Data.Ratio 	-- charge module Data.Ratio (:m === :module)

-- What a type system gives us is abstraction. A programming language’s type
-- system deeply colors the way we think and write code in that language.

-- There are three interesting aspects to types in Haskell: they are strong, they are static, and they can be automatically inferred.

-- Strong types:
-- we mean that the type system guarantees that a program cannot contain certain kinds of errors.
-- Another aspect of Haskell’s view of strong typing is that it will not automatically coerce values from one type to another. (Coercion is also known as casting or conversion.)

-- a Haskell compiler can automatically deduce the types of almost† all expres- sions in a program. This process is known as type inference.


-- Basic Types:
-- Char, Bool, Int (32 bits wide in a 32-bit machine, 64 bits in a 64-bit machine, the standard guarantees only that an Int is wider than 28bits), Integer (less performance and more space consumption), Double (64 bits, system floating point representation), Float (slower)

expression :: Mytype -- type signature (that is the way to declare a type)

odd 3 	-- is '3' odd? -> True
compare 2 3 	-- LT - others: EQ, GT 

(compare 2 3) == LT -- is equal to: compare 2 3 == LT
compare (sqrt 3) (sqrt 6) -- two params with parenthesis and two functions

head [1,2,3] -- first element in the list -> 1
tail [1,2,3,4] -- -> 4
tail "list" 	-- -> "ist"

-- Type name start with a Uppercase letter and type variable start with a lowercase letter

(1964, "Labyrinths")	-- tuple
() 	-- unit! (similar to void in C)
-- 2-tuple: pair
-- 3-tuple: triple
-- We often use tuples to return multiple values from a function.

take 2 [1,2,3,4,5] 	-- returns the first '2' elements of the list
drop 3 [1,2,3,4,5]	-- returns all *but* the first '3' elements of the list

-- only for 2-tuple, pairs:
fst (1, 'a') == 1	-- first element of a tuple
snd (1, 'a') == 'a'	-- second element of a tuple
-- tuples aren't inmutable lists

-- function application is left-associative:
--	a b c d === (((a b) c) d)


:type lines 	-- tell you the input & output of the 'lines' function
lines "hello\nworld\njesus" == ["hello", "world", "jesus"] 	-- lines function splits a string on line boundaries

-- A side effect introduces a dependency between the global state of the system and the behavior of a function.
-- *pure* functions: the result of the function depends only on the inputs that we explicitly provide
-- functions with side effects are *impure*.

readFile "file_name" 	-- read the file: file_name

-- the environment in which ghci operates is called IO monad is not the same of Haskell source file 

:load add.hs 	-- load a Haskell source file
:cd /tmp 	-- change of directory

-- Haskell doesn’t have a return keyword, because a function is a single expression, not a sequence of statements.
-- (Haskell does have a function called return, but we won’t discuss it for a while; it has a different meaning than in imperative languages.) !!!!

-- a variable provides a way to give a name to an expression

:type null 	-- *null* function, indicates whether a list is empty

-- *strict* evaluation: the arguments to a function are evaluated before the function is applied
-- Haskel use *nonstrict* evaluation

--The record that we use to track an unevaluated expression is referred to as a thunk. 

--Nonstrict evaluation is often referred to as lazy evaluation.

last [1,2,3,4,5] == 5 
last "baz" == 'z'

-- Type signatures are usually brief; we gain more in readability by keeping names short than we would by making them descriptive.

-- Type variables always start with a lowercase letter

-- If a function has type variables in its signature (it could be of any type), we call the function polymorphic.

-- A parameterized type in Haskell is similar to a type variable in Java generics.

-- ch 03

-- Algebraic Data Types:
-- data keyword is for create a new data type
data BookInfo = Book Int String [String] 	-- Book -> value constructor (is like a function)
				deriving (Show)				-- BookInfo -> type constructor
											-- Book Int String [String] -> are components
-- the way to define a variable out of a source file: 
--		let name_variable = ...

-- synonym: a way to give a type a more descriptive name (name for an existing type)

type CustomerID = Int -- sample

data Bool = False | True	-- an algebraic data type, only two values for Bool


