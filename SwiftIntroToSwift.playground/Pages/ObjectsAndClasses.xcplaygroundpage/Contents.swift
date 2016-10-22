//: ## Objects and Classes

import Foundation

// Properties are just constants or variables in the scope of the class
// Methods are declared as functions in the scope of the class

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var basicShape = Shape()
basicShape.numberOfSides = 3
basicShape.simpleDescription()



















// We should really have an initializer
// -- Add a name and initializer
class NamedShape {
    var numberOfSides: Int = 3
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape named \(name) with \(numberOfSides) sides."
    }
}

let namedShape = NamedShape(name: "square")
namedShape.numberOfSides = 4
namedShape.simpleDescription()



// Let's look at a special case of a NamedShape
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let square = Square(sideLength: 4.0, name: "square")
square.area()
square.simpleDescription()





// And another...
// Notice the addition of getters and setters for the perimeter property
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}





// We can observe property changes with willSet and didSet
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

protocol SomeProtocol {
  
}



// Optional chaining
let optionalSquare: Square? = Square(sideLength: 3, name: "s")
let sideLength = optionalSquare?.sideLength

//: [Next](@next)
