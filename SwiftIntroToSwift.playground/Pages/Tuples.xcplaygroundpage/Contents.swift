//: ### Tuples

import Foundation

// Toople? Tupple? Show of hands...

// HTTP Status response
// statusCode - Int, e.g. 404
// description - String, e.g. "Not Found"
var status = (statusCode: 400, description: "Not Found")
status.0
status.1

status.statusCode
status.description

var (_, text) = status
text





//: [Next](@next)
