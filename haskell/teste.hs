

somalista :: [Int] -> Int
somalista [] = 0
somalista (a:as) = a + somalista as


main = do
    somalista [1,2,3]

    