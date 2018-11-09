
valor :: Int -> Int
valor num 
  | (num >= 1 && num <= 10) = print jogo num
  | otherwise = do print "PERDEU!"
  
jogo :: Int -> IO ()
jogo soma 
  | soma == 21 = do print "VENCEU!"
  | otherwise = do 
      num <- getLine 
      jogo (soma + valor num)

main :: IO()
main = do  
    primeiroNum <- getLine
    jogo (valor(read primeiroNum))
 
