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


{--

List Function

head takes a list and returns its head.
The head of a list is basically its first element.
-----------
tail takes a list and returns its tail.
In other words, it chops off a list's head.
-----------
last takes a list and returns its last element.
-----------
init takes a list and returns everything except its last element.
-----------
length takes a list and returns its length, obviously.
-----------
null checks if a list is empty.
If it is, it returns True, otherwise it returns False.
Use this function instead of
xs == [] (if you have a list called xs)
-----------
reverse reverses a list.
-----------
take takes number and a list.
It extracts that many elements from the beginning of the list.
-----------
drop works in a similar way,
only it drops the number of elements from the beginning of a list.
-----------
maximum takes a list of stuff that can be put in some
kind of order and returns the biggest element.
-----------
minimum returns the smallest.
-----------
sum takes a list of numbers and returns their sum.
-----------
product takes a list of numbers and returns their product.
-----------
elem takes a thing and a list of things and tells us
if that thing is an element of the list.
It's usually called as an infix function
because it's easier to read that way.
-----------
also you can define the list range like this
[1..20], ['K'..'Z'] or [2,4..,20]

            ----------------------
Tuples

fst takes a pair and returns its first component.
-----------
snd takes a pair and returns its second component.
-----------
zip can take two lists that contain different types and zip them up.

            ----------------------
Types

Int stands for integer. Int is 2147483647 and the minimum is -2147483648.
-----------
Integer stands for, er … also integer. Int, however, is more efficient.
-----------
Float is a real floating point with single precision.
-----------
Double is a real floating point with double the precision!
-----------
Bool is a boolean type. It can have only two values: True and False.
-----------
Char represents a character. It's denoted by single quotes.
A list of characters is a string.

--}
