main :: IO()


valor :: String -> Int
valor comida 
  | comida == "cafe" = 8
  | comida == "almoco" = 12
  | otherwise = 10
  
conta :: Int -> Int -> String -> IO ()
conta quant soma comida
  | quant == 0 = do print soma
  | otherwise = do 
      comida <- getLine 
      conta (quant - 1 :: Int)  (soma + valor(comida) :: Int) (comida :: String)


main = do  
    quant <- getLine
    primeiraComida <- getLine
    conta (read quant :: Int)  (0)  (primeiraComida :: String)
 
    solucaoLinear :: Int -> Int -> IO()
    solucaoLinear a b = do
    
    
    
    
    calculaRaizes :: Int -> Int -> Int -> IO()
    calculaRaizes a b c = do 
    
    if (a == 0) then solucaoLinear b c
    else do
        let delta = (b * b) - (4 * a * c)
    
        if (delta < 0) then putStrLn ("O delta ---- é negativo, assim a equação não possui solução no conjunto dos números reais.")
        else if (delta == 0) then do
            let res = ((-1) * b) / 2 * a
            putStrLn ("O delta é igual a zero, assim a equação possui duas soluções iguais a ---- .)")
        else do
            let raiz = sqrt (fromIntegral  delta)
            let x1 = (((-1) * b) + raiz) / 2 * a
            let x2 = (((-1) * b) - raiz) / 2 * a
            putStrLn ("Como o delta é positivo(" << delta << "), a equação possui duas soluções distintas. São elas: ----")
        