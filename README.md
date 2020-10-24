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

## Day 4

### Loops

`for` loop with a range of numbers or an array:

```swift
let count = 1...10 // a range of numbers
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"] // an array
for album in albums {
    print("\(album) is on Apple Music")
}
```

if the constant is not needed, an underscore `_` is a better choice to avoid creating needless values:

```swift
print("Players gonna ")

for _ in 1...5 {
    print("play")
}
```

`While` loop with a condition

The condition will be checked every time **before** the execution 

```swift
var number = 1
while number <= 20 {
    print(number)
    number += 1
}
```

`repeat ... while` loop with a condition

The condition will be checked every time **after** the execution 

```swift
var number = 1
repeat {
    print(number)
    number += 1
} while number <= 20
```

`break` can be used to exit a loop, but it will only exit the current loop.

The following way allows us to exit multiple loops

1. give the outside loop a label;
2. the `break` and the label to exit the loops at the same time

```swift
loop1: while true {
    while true{
        break loop1
    }
}
```

`continue` can be used to skip the current condition

```swift
for i in 1...10 {
    if i % 2 == 1 {
        continue 
    }
    print(i) //it will not print odd numbers 
}
```

## Day 5

### Function

Swift use `func` keyword to define a function, followed by the name of the function.  

The input parameter and its type is included in a parentheses `()`. The type of the output is given after `->` . The code of the function is included in a brace `{}`. 

```swift
func func_name(input parameter = 0: Int...) -> Int { //define a function
		return parameter 
}
let output = func_name(input: 8) //calling a function
```

Swift allow two names for each parameter. the first `input` is used externally, the last `parameter` is used internally. 

Swift allow to omit the external name by `_`. 

Swift allow variadic parameters with `...` after the type of the value.

Swift use `throw` keyword before their return type to raise Error.

1. use `enum` to describe the errors to throw.

    The errors must always be based on **Swift’s existing Error type**.

    ```swift
    enum PasswordError: Error {
    		case obvious
    }
    ```

2. use the `enum` in the function.

    ```swift
    func checkPassword(_ password: String) throws -> Bool {
        if password == "password" {
            throw PasswordError.obvious
        }

        return true
    }
    ```

3. Swift use `do`, `try` and `catch` to handle errors.

    ```swift
    do {
        try checkPassword("password")
        print("That password is good!")
    } catch {
        print("You can't use that password.")
    }
    ```

By default, all parameters passed into functions are **constants**. `inout` keyword can be used, which means they can be changed inside your function, and those changes reflect in the original value outside the function. But the input parameter should be a **variable**.

## Day 6-7

### Closures

Closures are functions that work as any other types. 

They can be assigned to a variable and then the variable is **callable**.

```swift
let driving = {
    print("I'm driving in my car")
}
driving() //calling the closure
```

They can return values with `return` keyword, and the type of return value is listed before the `in` keyword. 

```swift
let driving_to = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = driving_to("London")
```

They can accept parameters, which is defined inside the open braces and listed before the `in` keyword. 

```swift
// define a closure with a `place` parameter
let driving_to = { (place: String) in 
    print("I'm going to \(place) in my car")
}
driving_to("London")
```

They can be passed to a **function** as **parameters**. 

If the closure itself has no parameter and no return value, their type should be specified as `()-> Void` in the function.

```swift
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action() //calling the closure
    print("I arrived!")
}

travel(action: driving)
```

If the closure need a parameter, it should be declared inside a parentheses.

```swift
func travel_to(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
```

The function can also accept a closure that can also return a value:

```swift
func travel_to(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
```

If the **last** parameter to a function is a closure, ****rather than pass in your closure as a parameter, you pass it directly **after the function inside braces,** which is called **trailing closure syntax:** 

```swift
travel() {
    print("I'm driving in my car")
}
```

If the closure is the **only parameter of the function** , the parentheses the can be eliminated entirely:

```swift
travel {
    print("I'm driving in my car")
}
```

Swift then allows a **shorthand** of the closure in the *tailing closure syntax*:

e.g. we defined a `travel_to` function that need a closure with an input value and return value, it can be called as follow:

```swift
travel_to { (place: String) -> String in
		return "I'm going to \(place) in my car"
}
```

Because the type of input value and return value has already declared when we define the `travel_to` function, so they can be eliminated:

```swift
travel_to { place in
    return "I'm going to \(place) in my car"
}
```

If the closure only has one line code, and this code is the return value, the `return` key word can be eliminate:

```swift
travel_to { place in
    "I'm going to \(place) in my car"
}
```

Even the parameters of closure can be eliminated and the Swift will provide automatic names for them. We just named them with a dollar sign `$` followed an integer number counting from `0`:

```swift
travel_to { 
    "I'm going to \($0) in my car"
}
```

Closure can also be the return value of a function

The follow shows how to declare it as a return value of a function:

```swift
func travel() -> (String) -> Void {
		return {
				print("I'm going to \($0)"
		}
}
```

Closure can also **interact** with variables outside the closure.

```swift
var counter = 0
let count = {  
		counter += 1
}
count()
print(counter) // counter = 1
```

## Day 8

### Structs

Structs, or **structures**, allow to create self defined data types out of several small types.

Use `struct` keyword to create a structure:

```swift
struct Sport {
		var name: String // define a property `name`
}
var tennis = Sport(name: "Tennis") //create an instant
print(tennis.name) //access the property
tennis.name = "Lawn tennis" //change the property
```

Swift allows to define a **computed** property:

```swift
struct Sport {
		var name: String // define a property `name`
		var party: String {
				return name + " party"
		}
}
```

**Property observers** are functions that run every time when the properties are changed

`didSet` property observer will be run after the property changed

```swift
struct Counter {
    var counter: Int {
        didSet {
            print("counter is \(counter)")
        }
    }
}
var counter = Counter(counter: 1)
counter.counter = 2
```

`willSet` to take action before a property changes.

Swift still use `func` keyword to define a **method** of a class.

By default, Swift won't allow a method to change the properties. `mutating func` can be used to define a method which can change the property.

```swift
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()
```

The build-in string type is a struct

It has `count` property to return its number of characters

It has `hasPrefix()` method to check if it starts with specific letters

It has `uppercased()` method to uppercase itself

It has `sorted()` method to sort the letters and return an array.

The build-in array is a struct

It has `count` property to return the number of its items.

It has `append()` method to add a new item

It has `firstIndex()` method to return the index of a specific item, starting from `0`

It has `sorted()` method to sort its items

It has `remove()` method to remove a specific item.

## Day 9 

### Special properties and methods

`self`  represents the instance of the struct. the property of structs can be used inside the struct as `self.property`.

The initializer in Swift is `init`

No `func` before `init`, all properties are valued after the `init`

i.g. a person struct:

```swift
struct Person {
    var name: String

    init(name: String) {
        print("My name is \(name)")
        self.name = name
    }
}
```

Swift allow `lazy` properties for those that does not use quite often. Swift will only create these `lazy` properties when it first accessed.

```swift
lazy var profession: String = ""
```

Swift allow `static` properties for only the class nor instances. 

```swift
struct Person {
		static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
				Person.classSize += 1
    }
}
var ed = Person(name: "ed")
var ann = Person(name: "ann")
print(Person.classSize) // print "2"
```

Swift allow `private` properties to control access. Only class method can access `private` properties.

```swift
struct Person {
    var name: String
		private var id: Int

    init(name: String, id: Int) {
        self.name = name
				self.id = id
    }
		func get_id() -> Int{
				return self.id
		}
}
var ed = Person(name:"ed", id: 1234)
print("\(ed.get_id())")
```

## Day 10

### Classes

Classes are similar to structs, but

1. Classes always have a initializer for their properties

    ```swift
    class Person {
    		var name: String
    		var gender: String		

    		init(name: String, gender: String) {
    				self.name = name
    				self.gender = gender
    		}
    }
    var ed = Person(name: "ed", gender: "man")
    ```

2. Classes allow **inheritance,** and the child class can use `super` to call its parent class.

    ```swift
    class Man: Person {
    		init(name: String) {
    				super.init(name: name, gender: "man")
    		}
    }
    var jo = Man(name: "jo")
    ```

    1. Child classes can `override func` over parent class.

        ```swift
        class Person {
            func get_title() -> String{
                return "Mr/Mrs"
            }
        }
        class Man: Person {
        		override func get_title() -> String {
        				return "Mr"
        		}
        }
        ```

    2. `final` classes are classes that disallow inheritance. 

        ```swift
        final class Classname {
        }
        ```

3. The copes of a class instance points to the same object in memory. 

    ```swift
    class Singer {
    		var name = "Taylor Swift"
    }
    var singer = Singer()
    var singerCopy = singer
    singerCopy.name = "Justin Bieber"
    print(singer.name) // print "Justin Bieber"	
    ```

4. Class can have deinitializers, `deinit`,  which are codes that run when its instance is destroyed.

    ```swift
    class Person {
        var name: String
        init(name: String) {
    				self.name = name
            print("\(self.name) is born")
        }
    		deinit {
    				print("\(self.name) is pass away")
    		}
    }
    var person = Person(name: "ed")
    person = Person(name: "jo") 
    ```

5. constant `class` instance is **allowed** to change its variables. So unlike `struct`, there is no need the `mutating` keyword for class variables to be changed by its method.

    ```swift
    class Singer {
        var name = "Taylor Swift"
    }

    let taylor = Singer()
    taylor.name = "Ed Sheeran"
    print(taylor.name) // print "Ed Sheeran"
    ```