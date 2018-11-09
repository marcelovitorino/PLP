import Control.Monad

start = do
    putStrLn "Before the loop!"
    -- we define "loop" as a recursive IO action
    let loop = do
            putStrLn "Hello, what is your name?"
            name <- getLine
            putStrLn $ "Welcome to our personality test " ++ name 
                     ++ ", inspired by the Big Five Theory."
           
            -- if we did not finish, start another loop
            when (name /= "start") loop
    loop  -- start the first iteration 
    putStrLn "After the loop!"
    
main = do
start

