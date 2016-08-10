//: ### Optionals

import Foundation

// Either has a value or is nil
var mightNotExist: Int?
mightNotExist = 42
mightNotExist = 78


// Optional binding
#if swift(>=3.0)
if let foo = mightNotExist, mightNotExist > 60 {
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
