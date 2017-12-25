
doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 then x else x*2
f xs = [if x<10 then "a" else "b" | x <- xs, odd x ]
fa xs ys = [x*y | x <- xs, y <- ys]
length' xs = sum[1 | _ <- xs]
removeLowerCase st = [c | c <- st, c `elem` ['A'..'Z']]
removeUpperCase xs = [x | x <- xs, x `elem` ['a'..'z']]
findEven xss = [ [x | x <- xs, even x] | xs <- xss ]
triangle = [ (x,y,z) | x <- [1..10], y <- [1..x], z <- [1..10], (x^2)+(y^2)==(z^2)]
