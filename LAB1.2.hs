-- Функція, що знаходить мінімальне та максимальне число у списку
-- та вилучає всі їх входження зі списку.
removeMinMax :: [Int] -> [Int]
removeMinMax xs = removeMax $ removeMin xs
  where
    minVal = minimum xs
    maxVal = maximum xs
    removeMin = filter (/= minVal)
    removeMax = filter (/= maxVal)

-- Приклад використання функції
main :: IO ()
main = do
  print $ removeMinMax []
  print $ removeMinMax [1,2,3,4,5,3,2,1,5,1,5,1,5,1,5]
  print $ removeMinMax [1,1,1,1,1,1,1,1,1]
  print $ removeMinMax [-1,-2,-3,-4,-5]
  print $ removeMinMax [-1,1,-2,2,-3,3,-4,4,-5,5]
  print $ removeMinMax [1]
  print $ removeMinMax [1,2]
  print $ removeMinMax [1,2,3]
