module HaskellBook where

import Data.List (intersperse)

mc91 :: Integer -> Integer
mc91 n
    | n > 100   = n - 10
    | otherwise = mc91 . mc91 $ n + 11

wordNumber :: Integer -> String
wordNumber n = concat . intersperse "-" $ (digitToWord <$> (digits n))
    where
        digits :: Integer -> [Integer]
        digits i
            | i < 10    = [i]
            | otherwise = (digits . (flip div) 10 $ i) ++ [mod i 10]

        digitToWord :: Integer -> String
        digitToWord i = case i of
            0 -> "zero"
            1 -> "one"
            2 -> "two"
            3 -> "three"
            4 -> "four"
            5 -> "five"
            6 -> "six"
            7 -> "seven"
            8 -> "eight"
            9 -> "nine"
            _ -> undefined
