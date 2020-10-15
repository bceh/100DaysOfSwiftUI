# 100DaysOfSwiftUI

## Day 1

### Variables and constants

The `var` keyword creates **variables**, which can be changed later

```swift
var str = "Hello swift"
print(str)
```

The variable can be changed

```swift
str = "Hello there"
```

The `let` keyword creates constants, which are values that can be set once and **never** again.

```swift
let e = 2.71828
```

Swift is a **type safe** language. Every variable must be of one specific type.

Swift will automatically assign the `Int` type to an integer, the `Double` type to a fractional number, the `bool` type to any variable assigned either true or false as its value.

```swift
var year = 2020
var pi = 3.1415
var real = true
var imaging = false
```

The type can be explicitly defined 

```swift
let year: Int = 2020
```

### String

String can goes over multiple lines with *line breaks*

```swift
str = """
String can
goes over
muliple lines
"""
```

String can also goes over multiple lines **without** line breaks

```swift
str = """
String can go\
es over \
multiple lines
"""
```

Any type of variable can be included in a string with a backslash, `\`, followed by the variable name in parentheses `()`

```swift
str = "pi equals to \(pi), and it is \(real)"
print(str)
```