//: ### Optionals

import Foundation

// Either has a value or is nil
var mightNotExist: Int? = nil















// Optional binding
#if swift(>=3.0)
if let foo = mightNotExist, foo > 5 {
    foo.distance(to: 50)
}
#else
    if let foobarbat = mightNotExist where mightNotExist > 60 {
        foobarbat.distanceTo(50)
    } else {
        print("Error")
    }
#endif

// Optional chaining
#if swift(>=3.0)
    mightNotExist?.distance(to: 6)
#else
    mightNotExist?.distanceTo(6)
#endif
//: [Next](@next)
