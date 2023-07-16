module Main where

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"


type Position = (Float, Float)
data Team = White | Black | Grey

-- card

-- map
type Map = (Int, Int)

-- objects
data Stone = Stone {
    stonePosition :: Position
  , stoneRadius :: Float
  , stoneFriction :: Float }

data Dir = U | D | L | R

data Wall = Wall {
    wallPosition :: Position
  , wallLength :: Float
  , wallDir :: Dir }

-- players
data Player = Player {
    playerId :: Int
  , playerTeam :: Team
  , playerName :: String }

-- games
data Game = Game {
    player1 :: Player
  , player2 :: Player
  , gameName :: String }

