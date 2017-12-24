doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 then x else x*2

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


--}
