# Enumerations

These define a common type for a group of related values. Heres an example:
```swift
enum CompassPoint {
    case north
    case south
    case east
    case west
}
```
The value of each case has the type of "CompassPoint". We would then use our newly created enum as such:
```swift
var directionToHead = CompassPoint.west
```

## Associated Values in Enums
Sometimes you may want to  be able to store values of 