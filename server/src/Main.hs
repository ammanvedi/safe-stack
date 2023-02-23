{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty

main :: IO ()
main = scotty 3000 $
    get "/:word" $ do
        beam <- param "word"
        html $ mconcat ["<h1>Ammany  , ", beam,  " me up!</h1>"]