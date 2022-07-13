import UIKit

var pet: String?     // This is an optional String type, initialized as nil
pet = "Skippy"
print(pet!)         //Forced unwrapping



var present: String? = "Apple Watch"

if let unwrappedPresent = present {
  print("OMG Thank you for the \(unwrappedPresent)")
}
print("OMG Thank you for the \(present!)") // Force implicit unwrap using the "!"




// create a function
func checkOddEven() {
  var number = 23

  // use of guard statement
  guard number % 2 == 0 else {
    
    print("Odd Number")
    return
  }

  print("Even Number")
}
checkOddEven()



//Implicitly unwrapped optionals
let possibleDevice: String? = "Apple Watch"
let watch: String = possibleDevice!

let assumedDevice: String! = "iPhone"
let iphone:String = assumedDevice // no need to unwrap
print(iphone)



//nil coalescing
var optionalInt: Int? = 10
var mustHaveResult = optionalInt ?? 0   //if optionalInt DNE mustHaveResult = 0

