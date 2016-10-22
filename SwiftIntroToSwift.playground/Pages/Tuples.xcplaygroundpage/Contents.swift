//: ### Tuples

import Foundation

// Toople? Tupple? Show of hands...

// HTTP Status response
// statusCode - Int, e.g. 404
// description - String, e.g. "Not Found"
var status = (statusCode: 418, description: "I'm a teapot")
status.0
status.1

status.statusCode
status.description

let (_, description) = status

description





//: [Next](@next)
