main :: IO()
main = do
        print(splitPoints (1,1) 5 [(1,2),(2,3),(10,15),(-1,1),(12,14)])
      

type Point = (Double,Double)
splitPoints :: Point -> Double -> [Point] -> ([Point],[Point])

insidePoints:: Point -> Double -> [Point] -> [Point]
insidePoints (x1, y1) r arr = [(x2, y2) | (x2, y2) <- arr, sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1- y2)) <= r]

outsidePoints:: Point -> Double -> [Point] -> [Point]
outsidePoints (x1, y1) r arr = [(x2, y2) | (x2, y2) <- arr, sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1- y2)) > r]

splitPoints (x, y) r points = (insidePoints (x, y) r points, outsidePoints (x, y) r points)