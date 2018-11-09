
valor :: String -> Int
valor comida 
  | comida == "cafe" = 8
  | comida == "almoco" = 12
  | otherwise = 10
  
conta :: Int -> Int -> String -> IO ()
conta quant soma comida
  | quant == 1 = do print soma
  | otherwise = do 
      comida <- getLine 
      conta (quant - 1)  (soma + valor(comida)) comida

main :: IO()
main = do  
    quant <- getLine
    primeiraComida <- getLine
    conta (read quant)  (valor(primeiraComida))  primeiraComida 
 
