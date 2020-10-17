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

## Day 2

### Array

The array starts and ends with *brackets*, with each item in the array separated by a *comma*.

```swift
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
```

Array can be indexed with a bracket and the index is counted from 0.

```swift
beatles[0] //output 'John Lennon'
```

### Set

Items in a set **aren’t stored in any order**; they are stored in what is effectively a random order.

Swift makes no guarantees about its order.

The value can't be read by indices.

No item can appear twice in a set; all items must be **unique**.

Duplicate items, which inserted into a set, will get ignored.

It can be created directly from arrays

```swift
let colors = Set(["red", "green", "blue"])
```

### Tuple:

The tuple starts and end with parentheses `()`, with each `key : value` pair in the  tuple separated by a *comma*.

1. Tuple are fixed in size;
2. The values can be accessed (read and edit) by given indeces or names

    ```swift
    var pop = (first: "Taylor", last: "Swift", age : 25)
    pop.0      //return "Taylor"
    pop.first  //return "Taylor"
    ```

### Dictionary:

The directionary starts and ends with *brackets* `[]`, with each `key : value` pair in the directionary separated by a *comma*. 

Dictionary can only be accessed by `key`

The `key` can be any tpyes, usually, string is used. 

```swift
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
```

A default value can be given when try to access a directionary by the keyword `default: "return_value"`

```swift
Dic["Unknown_key", default: "Unknown"] //return "Unknown" when Dic don't have the key "None"
```

### Creating empty collections

Examples of creating an empty `Dictionary`, `Array` and `Set`.

```swift
var empty_dic = Dictionary<String, Int>()
var empty_arr = Array<Int>()
var empty_set = Set<Int>()
```

Swift has special syntax for `Dictionary` and `Array`.

```swift
var empty_dic = [String: Int]()
var empty_arr = [Int]()
```

### Enumerations

Enumerations or enums are types that are defined with several values. But only one value can be accessed each time

```swift
enum Result {
		case success
		case failure
}

let result = Result.failure  // result = failure
```

Enums can also store associated values attached to each case.

```swift
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")
```

Enums can also be assigned values.

```swift
enum Planet: Int {
    case mercury
    case venus 
    case earth
    case mars
}
```

Swift will automatically assign each of those a number starting from 0.

```swift
Planet.mercury.rawValue // return 0
```

## Day 3

### Arthimatic Operators

- addition `+`; subtraction `-`; multiplication `*`; division `/`; remainder `%`

The addition `+` can also be used to join strings

These operations can be used as assignment operators with `=`

```swift
var score = 95
score += 5 // score now equals to 100
```

It also works with strings.

### Comparison operators

- equal `==`; not equal `!=`; less `<`; less equal `<=`;

These also work with strings with natural alphabetical order.

- AND `&&`; OR `||`

### If statements

- `if`; `else if` and `else` statements can be used to write conditions

    ```swift
    if false {
    print ("1")
    }else if true {
    print("2")
    } else {
    print("3")
    } // these will print out "2"
    ```

### The ternary operator

The ternary operator is a **condition** plus **true or false blocks** all in one.

It checks the condition specified in the **first** value, and if it’s true returns the **second** value, but if it’s false returns the **third** value.

```swift
let firstCard = 11
let secondCard = 10
// use the ternary operator
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
// it works as follows
if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}
```

### Switch statements

The construct `switch case` can be used to write conditions.

In this construct, one `default` case is needed.

```swift
let weather = "rain"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
		fallthrough
default:
    print("Enjoy your day!")
}
```

Swift will default only run the code inside each case. If you want execution to continue on to the next case, use the `fallthrough` keyword.

### Range operators

`..<` and `...` operators can be used to *making ranges*.

The half-open range operator, `..<`, creates ranges that **not** include the final value.

The closed range operator, `...`, creates ranges that *include* the final value.

e.g `1..<5` contains numbers 1, 2, 3, and 4;

`1...5` contains numbers 1, 2, 3, 4, and 5

Range can be used in `switch` blocks.

```swift
let score = 85

switch score {
case 0..<60:
    print("Failed")
case 60..<100:
    print("Fine")
default:
    print("False")
}
```