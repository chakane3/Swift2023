# Operators
Operators are:
    <ul>
        <li>Unary Operators - Operator on a single target</li>
        <li>Binary Operators - Operate on 2 targets</li>
        <li>Ternary Operators - ```a ? b : c```</li>
    <ul>

## Ternary Conditional Operator
This is the one i get most confused with. When we think of this, it should pose a question as such: ```question ? answer1 : answer2```. It is basically shorthand for:
```swift
if question {
    answer1
} else {
    answer2
}
```

## Nil-Coalescing Operator
This unwraps an optional if it contains a value; if not it returns a default value This is what it looks like ```(a ?? b)```. Here a would be the optional value while b is the default value. What would be the outcome of those block of code?
```swift
let defaultColorName = "red"
var userDefinedColorName = String?

var colorNameToUse = userDefinedColorName ?? defaultColorName
```

## Range Operators
Swift has plenty of range operators.

### Closed Range Operator
```(a...b)``` defines a range which include a, b, and in between. 
```swift
for index in 1...5 {
    print("The index right now is \(index)")
}
```

### Half-Open Range Operator
```(a..<b)``` defines a range which includes a, excludes b, and everything in between. These are pretty useful.
```swift
let colors = ["red", "green", "blue"]
let count = colors.count
for i in 0..<count {
    print("The color right now is \(count)")
}
```

### One-Sided Ranges 
These continue as far as possible in one direction. It can either start or end in an index. 
```swift
for color in colors[1...] {
    print(color)
}

for i in colors[...1] {
    print(color)
}
```