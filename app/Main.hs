module Main where

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"


type Position = (Float, Float)

data Team = White | Black | Grey

data Dir = U | D | L | R

-- card (todo)
data Card = Card {
    cardName   :: String
  , cardCost   :: Int
  , cardAction :: [String] }

-- first : target selected
-- second : 

type Map = (Int, Int)


data Stone = Stone {
    stonePosition :: Position
  , stoneRadius   :: Float
  , stoneFriction :: Float }

data Wall = Wall {
    wallPosition :: Position
  , wallLength   :: Float
  , wallDir      :: Dir }


data Player = Player {
    playerId   :: Int
  , playerTeam :: Team
  , playerName :: String
  , playerDeck :: [Card] }

-- games
data Game = Game {
    player1  :: Player
  , player2  :: Player
  , turn     :: Bool
  , gameName :: String }

