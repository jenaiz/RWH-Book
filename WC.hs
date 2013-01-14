-- file: ch01/WC.hs
-- Count lines

main = interact wordCount
	where wordCount input = show (length (lines input)) ++ "\n"

-- exercise 1: count words in a file
-- exercise 2: count the characters in a file