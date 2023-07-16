module Main where

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"


type Position = (Float, Float)
type GridPosition = (Int, Int)

data Team = White | Black | Grey

data Dir = U | D | L | R
data Range = Int
type Area = (GridPosition, Range)

data Target = 
    TargetCard Card 
  | TargetObject Object
  | TargetArea Area

-- card (todo)
data Card = Card {
    cardName   :: String
  , cardCost   :: Int
  , cardAction :: [String] }


type Map = (Int, Int)

data Object = ObjectStone Stone | ObjectWall Wall

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
  , map      :: Map
  , objects  :: [Object]
  , gameName :: String }

{--
isObjectInArea :: Area -> Object -> Bool
isObjectInArea (areaPosition, r) (ObjectStone stone) = (ax+ar >= sx) && (ax-ar <= sx) && (ay+ar >= sy) && (ay-ar <= sy)
  where 
    (ax, ay) = fmap fromIntegral areaPosition
    ar       = fromIntegral r
    (sx, sy) = stonePosition stone
isObjectInArea ((x, y), r) (ObjectWall wall) = (x+r >= wx) && (x-r <= wx) && (y+r >= wy) && (y-r <= wy)
  where 
    (wx, wy) = wallPosition wall 
--}

-- getObjectsInArea :: [Object] -> Area -> [Object]
-- getInAreaObjects objects area = filter (isObjectInArea area) objects 