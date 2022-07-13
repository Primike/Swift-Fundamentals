import UIKit

struct Rectangle {  //Rectangle type
  var width = 10
  var height = 20
  func printDesc() {
    print("I have a width of \(width) and a height of \(height)")
  }
  mutating func doubleWidth() {     //mutating required when changine values in struct
    width *= 2
  }
}

let rectangle = Rectangle()



struct Square {
    var width: Int      //Dont have to specify the initializer.
    var height: Int
}
let square = Square(width: 200, height: 400)

