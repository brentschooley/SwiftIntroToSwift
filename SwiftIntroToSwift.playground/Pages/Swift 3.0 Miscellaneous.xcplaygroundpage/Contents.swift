//: [Previous](@previous)
//: ## Swift 3.0 Stuff

import Foundation
import UIKit

let numbers = [11, 35, 500, 23, 45]
let name = "Brent"
var names = ["Tom", "Sally", "Sue", "John"]

//This #if swift(>=3.0) is new in Swift 3.0
#if swift(>=3.0)
    // All function parameters have labels unless you request otherwise
    //UIFont.preferredFon
    
    class MyTableViewController: UITableViewController {
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    }
    // Omit needless words
    
    let fullname = name.appending(" Schooley")
    // Upper camel case replaced with lower camel case for properties and enum values
    
    
    // "Swifty" importing of C functions
    // (start with if let ctx = UIGraphicsGetCurrentContext() {)
    
    
if let ctx = UIGraphicsGetCurrentContext() {
    ctx.setFillColor(UIColor.red.cgColor)
}
    
    
 
#else

    // All function parameters have labels unless you request otherwise
    UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
    
    
    class MyTableViewController: UITableViewController {
        override func numberOfSectionsInTableView(tableView: UITableView) {
            return 1
        }
    }
    
    
    // Omit needless words
    let blue = UIColor.blueColor()
    let min = numbers.minElement()
    attributedString.appendAttributedString(anotherString)
    names.insert("Jane", atIndex: 0)
    UIDevice.currentDevice()
    
    
    // Upper camel case replaced with lower camel case for properties and enum values
    
    
    
    // "Swifty" importing of C functions
    let ctx = UIGraphicsGetCurrentContext()
    
    let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512)
    CGContextSetFillColorWithColor(ctx, UIColor.redColor().CGColor)
    CGContextSetStrokeColorWithColor(ctx, UIColor.blackColor().CGColor)
    CGContextSetLineWidth(ctx, 10)
    CGContextAddRect(ctx, rectangle)
    CGContextDrawPath(ctx, .FillStroke)
    
    UIGraphicsEndImageContext()
    
    
#endif
//: [Next](@next)
