
swap :: [Int] -> [Int]
swap lista = [a | a <- lista, a >= 60] ++ [a | a <- lista, a < 60]

main :: IO()
main = do
   entrada <- getLine
   let lista = read entrada :: [Int]
   print (swap lista)