//: ### Functions and Closures

import Foundation

// Basic Function
func sayHelloTo(name: String, day: String) -> String {
    return "Hello \(name). Have a nice \(day)!"
}


#if swift(>=3.0)
sayHelloTo(name: "Brent", day: "Wednesday")
#else
sayHelloTo("Brent", day: "Friday")
#endif















// Slightly more advanced
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
var scores = [90, 99, 60, 25, 100]

#if swift(>=3.0)
    var (min, max, sum) = calculateStatistics(scores: scores)
    min
    max
    sum
#else
    var (min, max, sum) = calculateStatistics(scores)
    max
    sum
#endif














// Functions are a first-class type

// Function as return type
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
//var increment = makeIncrementer()
var increment = makeIncrementer()
increment(7)

// Function as parameter
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

// Functions are a special case of closures:
// blocks of code that can be called later.
var numbers = [2, 5, 7, 10]
numbers.map({number in 2 * number})



/*  When a closure’s type is already known you can leave out the type of its parameters, its return type, or both. Single statement closures implicitly return the value of their only statement.
*/


//: [Next](@next)
