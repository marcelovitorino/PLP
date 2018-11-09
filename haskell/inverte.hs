
import Data.Char


inv	:: [Char] -> [Char]
inv	[] = []
inv	(a:as) = inv as ++ [a]

inverte :: String -> String -> String
inverte [] letra = []
inverte (a:as) letra 
  |letra == [a] = [a] ++ (inv as)
  |otherwise = [a] ++ (inverte as letra)


main :: IO()
main = do
  letra <- getLine
  palavra <- getLine

  let result = inverte palavra letra
  putStrLn (result)

  
