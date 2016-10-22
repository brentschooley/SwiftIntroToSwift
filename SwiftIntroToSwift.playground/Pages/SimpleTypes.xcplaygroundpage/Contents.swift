//: ## Simple Types and Type Inference

import Foundation

// Age as Integer
var myAge: Int = 35

// Age as Double
var myAgeDouble = 35.0

// Age as Float
var myAgeFloat = Float(myAgeDouble)



// Boolean
let isOld: Bool = false


// String concatenation / type coersion
// Name + age
var myNamePlusAge = "Brent " + String(myAge)
myNamePlusAge = "Brent \(myAge)"


//: [Next](@next)
