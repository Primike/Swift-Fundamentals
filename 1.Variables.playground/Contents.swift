// Prince Avecillas 1 Mar 2022

import UIKit

var z = nil ?? "po"
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024


var welcome = "hello!"
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)



let greetingz = "Hello, world!"
let index = greetingz.firstIndex(of: ",") ?? greetingz.endIndex
let beginning = greetingz[..<index]
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)



















