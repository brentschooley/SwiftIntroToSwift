//: ### Control Flow

import Foundation

// If
let cold = false

if cold {
    
}



















// Switch (with pattern matching)
let vegetable = "jalapeno"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}











// For-in (with tuples)
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest









#if swift(>=3.0)
    
#else
    // Classic for loop
    var secondForLoop = 0
    for var i = 0; i < 4; ++i {
        secondForLoop += i
    }
#endif


// For (range)
var firstForLoop = 0
for i in 0...4 {
    firstForLoop += i
}














// While
var n = 2
while n < 100 {
    n = n * 2
}
print(n)

// Repeat While
var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)



//: [Next](@next)
