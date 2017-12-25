# Haskell

Fundamentals of Language


## List Function

### head

head takes a list and returns its head.

```
ghci> head [5,4,3,2,1]
5
```

### tail

tail takes a list and returns its tail.

```
ghci> tail [5,4,3,2,1]
[4,3,2,1]
```

### last

last takes a list and returns its last element.

```
ghci> last [5,4,3,2,1]
1
```

### init

init takes a list and returns everything except its last element.

```
ghci> init [5,4,3,2,1]
[5,4,3,2]
```

### length

length takes a list and returns its length, obviously.

```
ghci> length [5,4,3,2,1]
5
```

### null

null checks if a list is empty.

```
ghci> null [1,2,3]
False
ghci> null []
True
```

### reverse

reverse reverses a list.

```
ghci> reverse [5,4,3,2,1]
[1,2,3,4,5]
```

### take

take takes number and a list.

```
ghci> take 3 [5,4,3,2,1]
[5,4,3]
ghci> take 1 [3,9,3]
[3]
```

### drop

drop only it drops the number of elements from the beginning of a list.

```
ghci> drop 3 [8,4,2,1,5,6]
[1,5,6]
ghci> drop 0 [1,2,3,4]
[1,2,3,4]
```

### maximum

maximum returns biggest element.

```
ghci> maximum [1,9,2,3,4]
9
```

### minimum

minimum returns the smallest.

```
ghci> minimum [8,4,2,1,5,6]
1
```

### sum

sum takes a list of numbers and returns their sum.

```
ghci> sum [5,2,1,6,3,2,5,7]
31
```

### product

product takes a list of numbers and returns their product.

```
ghci> product [6,2,1,2]
24
```

### elem

elem takes a thing and a list of things and tells us
if that thing is an element of the list.

```
ghci> 4 `elem` [3,4,5,6]
True
```

### length

also you can define the list range like this

```
[1..20], ['K'..'Z'] or [2,4..,20]
```

### cycle

cycle takes a list and cycles it into an infinite list. If you just try to display the result,
it will go on forever so you have to slice it off somewhere.

```
ghci> take 10 (cycle [1,2,3])
[1,2,3,1,2,3,1,2,3,1]
```

### repeat

repeat takes an element and produces an infinite list of just that element.
It's like cycling a list with only one element.

```
ghci> take 10 (repeat 5)
[5,5,5,5,5,5,5,5,5,5]
```

### replicate

replicate function if you want some number of the same element in a list.

```
ghci> take 10 (replicate 3 10)
[10,10,10]
```


## Tuples

### fst

fst takes a pair and returns its first component.

```
ghci> fst (8,11)
8
ghci> fst ("Wow", False)
"Wow"
```

### snd

snd takes a pair and returns its second component.

```
ghci> snd (8,11)
11
ghci> snd ("Wow", False)
False
```

### zip

zip can take two lists that contain different types and zip them up.

```
ghci> zip [1,2,3,4,5] [5,5,5,5,5]
[(1,5),(2,5),(3,5),(4,5),(5,5)]
ghci> zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"]
[(5,"im"),(3,"a"),(2,"turtle")]
```

## Types

### Int

Int stands for integer. Int is 2147483647 and the minimum is -2147483648.

### Integer

Integer stands for, er … also integer. Int, however, is more efficient.

```
factorial :: Integer -> Integer
factorial n = product [1..n]
ghci> factorial 50
30414093201713378043612608166064768844377641568960512000000000000
```

### Float

Float is a real floating point with single precision.

```
ghci> circumference 4.0
25.132742
```

### Double

Double is a real floating point with double the precision!

```
ghci> circumference' 4.0
25.132741228718345
```

### Bool

Bool is a boolean type. It can have only two values: True and False.

### Char

Char represents a character. It's denoted by single quotes.
A list of characters is a string.


## Types Classes

### Eq

Eq is used for types that support equality testing.

```
ghci> 5 == 5
True
ghci> 5 /= 5
False
```

### Ord

Ord is for types that have an ordering.

```
ghci> "Abrakadabra" < "Zebra"
True
ghci> 5 >= 2
True
ghci> 5 `compare` 3
GT
```

### Members

Members of Show can be presented as strings.

```
ghci> show 5.334
"5.334"
ghci> show True
"True"
```

### read

The read function takes a string and returns a type which is a member of Read.

```
ghci> read "8.2" + 3.8
12.0
ghci> read "5" :: Float
5.0
ghci> (read "5" :: Float) * 4
20.0
```

### Enum

Enum members are sequentially ordered types — they can be enumerated.

```
ghci> ['a'..'e']
"abcde"
ghci> [3 .. 5]
[3,4,5]
```

### Bounded

Bounded members have an upper and a lower bound.

```
ghci> minBound :: Int
-2147483648
```

### Num

Num is a numeric typeclass.
Its members have the property of being able to act like numbers.
Types in this class: (), Bool, Char, Ordering, Int, Integer, Float and Double.

```
ghci> 20 :: Float
20.0
```

### Integral

Integral is also a numeric typeclass.
Num includes all numbers, including real numbers and integral
numbers, Integral includes only integral (whole) numbers.
In this typeclass are Int and Integer.

### Floating

Floating includes only floating point numbers, so Float and Double.
