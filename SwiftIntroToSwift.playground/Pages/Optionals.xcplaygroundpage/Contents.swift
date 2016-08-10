//: ### Optionals

import Foundation

// Either has a value or is nil
var mightNotExist: Int? = nil
mightNotExist = 42
mightNotExist = 78


// Optional binding
#if swift(>=3.0)
    
#else
    if let foobarbat = mightNotExist where mightNotExist > 60 {
        foobarbat.distanceTo(50)
    } else {
        print("Error")
    }
#endif


// Optional chaining
#if swift(>=3.0)
    
#else
    mightNotExist?.distanceTo(6)
#endif
//: [Next](@next)
