import UIKit

class Person {                          // classes are reference types
      var fullName: String
      init(name: String) {
        self.fullName = name
      }
      func introduce() {
        print("Hi my name is \(self.fullName)")
      }
    }
    var j = Person(name: "Homer Simpson")
    var k = j                               //This refers the variable k to the same instance as j
                                          
    j.introduce()
    k.fullName = "Homer J Simpson"        // We are changing the name through the k variable.
    j.introduce()                         // j and k refer to the same instance in memory
                                          



struct Rectangle {
      var width: Int
      var height: Int
    }
    var square1 = Rectangle(width: 10, height: 10)
    var square2 = square1                           //This makes a copy of the instance square1
                                                  
    print("square1's width: \(square1.width), square2's width \(square2.width)")
    square2.width = 20
    square2.height = 20
    print("square1's width: \(square1.width), square2's width \(square2.width)")
