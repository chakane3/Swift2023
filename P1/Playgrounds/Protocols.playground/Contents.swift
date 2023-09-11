import UIKit
import Foundation

// Protocol: a "blueprint" which list properties, methods, or initializers which will be required to be implemented when used.

protocol SomeProtocol {
    // properties
    var someString: String { get set }
    var someInt: Int { get }
    
    // methods
    func someMethod()
    mutating func someMutatingMethod()
}

struct SomeStruct: SomeProtocol {
    var someString: String = ""
    
    var someInt: Int
    
    func someMethod() {
        print("some method)")
    }
    
    mutating func someMutatingMethod() {
        print("some mutating method")
    }
}
// MARK: -
protocol Race {
    var type: String { get }
    var distance: Double { get }
    var name: String { set get }
    
    func info()
}

struct Marathon: Race {
    var type: String {
        return "Marathon"
    }
    
    var distance: Double {
        return 23.7
    }
    
    var name: String = "NYC Marathon"
    
    func info() {
        print("The \(name) is a \(type) nd is \(distance) long.")
    }
}
let x = Marathon(name: "ABG NYC Marathon")
x.info()

// MARK: -
protocol Chakane {
    var age: Int { get }
    var weight: Int { get }
    var isCoding: Bool {get set}
    func info()
}

struct Human: Chakane {
    var age: Int = 28
    
    var weight: Int = 135
    
    var isCoding: Bool = true
    
    func info() {
        print("This is a Chakane protocol. His age is \(age) and he weights \(weight) and is he coding? \(isCoding)")
    }
}

// MARK: - Create a movie struct, then creates 2 instances of movie struct and conform to Eqatable
struct Movie: Equatable {
    var name: String = ""
}

let movie1 = Movie(name: "John Wick")
let movie2 = Movie(name: "Ratatouillie")
if(movie1 == movie2) {
    print("its a match")
} else {
    print("They dont match")
}

