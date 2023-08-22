# The Basics

Swift is mainly used for any device running on MacOSX. This languaged is derived from C/Objective-C. Many things about C you will find in Swift. One thing about Swift that is very important is that it uses <b>Optional Types<b>. These types handle the absence of values. Informally an optional can be read as: There "might" be a value in this veriable. So for example if you set x = y?. The "?" will state that "y" may or may not have a value. It it does not have a value it returns "nil". <b>This works for any variable of any type.</b> Swift is "type-safe", meaning the language will help you not make silly mistakes. For example if a variable requires a String, the type safety feature of this language will not let you pass an Int. <br>

## Constants vs Variables
```swift
let maxNumberOfLogins = 10 // Constant
var currentLoginAttempt = 0 // Variable
```

## Type Annotations
A type annotation is just a way declare a type for a varible. In swift, variables are type inferred meaning you dont have to specify if its going to be a String, Int, Boolean, etc. However you can absolutely declare these things using type annotation, for example:
```swift
var welcomeMessage = "Hello" // Without Type annotation

var welcomeMsg: String // With type annotation
welcomeMsg = "Hello"
```

## Printing vars and constants
We can use ```print(_:seperator:terminator:)``` to print stuff to the console. Generally we can use it as such: ```print("Hello")```. Swift also uses <b>String Interpolation</b> so we can include variables of constants within the string itself. 
```swift
print("Theres a really cool place called \(aCoolPlace)")
```

## Integers
Integers are just whole numbers with can be signed (positive, zero, or negative) and unsigned (positive or zero). Swift gives is signed/unsigned Ints in: 8, 16, 32, 64-bit forms. 
<ul>
    <li>Int8</li>
    <li>Int16</li>
    <li>Int32</li>
    <li>Int64</li>
</ul>

We dont need to ponder too much about Ints and UInts but be aware theres two types of Int types. We can defer to using Int. 

### Integer Bounds
```swift
let minValue = UInt8.min // equals 0, and is of type UInt8
let maxValue = UInt8.max // equals 255, and is of type UInt8
```

## Floating-Point Numbers
These are fractional numbers such as: 3.14567 or -34.67.
<ul>
    <li>Double - Represents 64-bit floating point numbers; It has a precision of 15 decimal digits</li>
    <li>Float - Represents 32-bit floating point numbers; It has a precision of 6 decimal digits</li>
</ul>

## Integer Conversion
Each numeric type can store a different range of numbers. For example:
<ul>
    <li>Int8 - Can store numbers between -128 - 127</li>
    <li>UInt8 - Can store numbers between 0 - 255</li>
</ul>

There may be a case where we need to convert one specific number type to another. To do so we just need to create a new variable with the desired type. The below code shows hpw to convert UInt8 to UInt16. 
```swift
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
```

## Type Alias
These define an alternative name for an existing type. Think of this as just renaming a type to fit our purpose for it. For example if our project of working with audio frequencies; and we know that those values are mainly going to be kept in UInt16; we can rename UInt16 so that other devs know the context faster. 
```swift
typealias AudioSample = UInt16
```

## Tuples
This of this as creating an object, throwing a bunch of things in that object and returning the object as one. The things inside the object dont all have to be of the same type. For example:
```swift
let http404Error = (404, "Not Found")

// To use this property we can decompose as such
let (statusCode, statusMessage) = http404Error
// Now we have 2 properties which will give us the properties inside http404Error 

// We can also use index numbers to access the values
print("Status code is \(http404Error.0)")
print("Status msg is \(http404Error.1)")


// Alternatively we can do this 
let http200Status = (statusCode: 200, description: "OK")
print("Status code is \(http200Status.statusCode)")
print("Status msg is \(http200Status.description)")
```

## Optionals
Optionals expresses 2 possibilities:
    <ul>
        <li>Either there is a value and you can unwrap the optional to access the value</li>
        <li>There is no value at all, handle however you want</li>
    <ul>

Lets take a look at this example:
```swift
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
```
Here, convertedNumber is of type Int?. The ```?``` states an optional


## If Statements and Forced Unwrapping
We should use if statements to figure out if an optional contains a value. Then when we establish that our variable has a value we need to access the value by appending an ```!```.
```swift
if convertedNumber != nil {
    print("convertedNumber contains a value: \(convertedNumber!)")
}
```

## Optional Binding
Optional binding is used to figure out if an optional has a value, if so, we make it a temp property. 


```swift
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldent be converted to an integer")
}
```

This can be read as: "If the optional Int returned by Int(possibleNumber) contains a value, set a new constant called actualNumber to the value contained in the optional". Therefore in this case we dont need to use a ```!```.

