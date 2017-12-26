
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 then x else x*2

f xs = [if x<10 then "a" else "b" | x <- xs, odd x ]

fa xs ys = [x*y | x <- xs, y <- ys]

length1' xs = sum[1 | _ <- xs]

removeLowerCase st = [c | c <- st, c `elem` ['A'..'Z']]

removeUpperCase xs = [x | x <- xs, x `elem` ['a'..'z']]

findEven xss = [ [x | x <- xs, even x] | xs <- xss ]

triangle = [ (x,y,z) | x <- [1..10], y <- [1..x], z <- [1..10], (x^2)+(y^2)==(z^2)]

fact :: (Num a, Eq a) => a -> a
fact 0 = 1
fact x = x * fact (x-1)

addVector :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVector a b = (fst a + fst b, snd a + snd b )

first' :: [a] -> a
first' (x:xs) = x

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

last' :: [a] -> a
last' [x] = x
last' (x:xs) = last' xs

last2 :: [a] -> a
last2 [x,_] = x
last2 (x:xs) = last2 xs

find' :: [a] -> Int -> a
find' (x:_) 1  = x
find' (_:xs) i = find' xs (i - 1)

uzunluk :: (Num b) => [a] -> b
uzunluk [] = 0
uzunluk (_:xs) = 1 + uzunluk xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

maxa' :: (Ord a) => a -> a -> a
maxa' a b
        | a < b = b
        | otherwise = a

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

max' :: (Ord a) => [a] -> a
max' [x] = x
max' (x:xs)
    | x > maxi = x
    | otherwise = maxi
    where maxi = max' xs

min' :: (Ord a) => [a] -> a
min' [x] = x
min' (x:xs)
  | x < minx = x
  | otherwise = minx
  where
    minx = min' xs

max2 :: (Ord a) => [a] -> a
max2 [x] = x
max2 (x:xs) = max x (max2 xs)

min2 :: (Ord a) => [a] -> a
min2 [x] = x
min2 (x:xs) = min x (min2 xs)

rep :: (Integral a) => a -> a -> [a]
rep n x
  | n <= 0 = []
  | otherwise = x:rep (n-1) x

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
  | a == x    = True
  | otherwise = elem' a xs

multi :: (Num a) => a -> (a -> (a -> a))
multi x y z = x*y*z
