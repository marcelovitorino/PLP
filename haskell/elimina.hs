
exclui :: String -> String -> String
exclui palavra letra = [a | a <- palavra, [a] /= letra]


main = do
    letra <- getLine
    palavra <- getLine
    let result = exclui palavra letra
    putStrLn (result)