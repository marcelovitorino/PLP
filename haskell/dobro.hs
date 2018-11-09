dobro:: int -> int
dobro x = x * 2

main = do
    input <- getLine
    let num = dobro read input
    print num 


    poetica :: [String] -> [String]
poetica [] = 0
poetica (a:as) = a


main = do
    inputA <- getLine
    let num = poetica (read inputA)
    print num 
    

poetica :: [Int] -> Int
poetica [] = 0
poetica (a:as) = a + poetica as


main = do
    inputA <- getLine
    let num = poetica (read inputA)
    print num 
    