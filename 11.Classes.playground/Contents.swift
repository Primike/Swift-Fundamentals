import UIKit

class Person {
    var species = "Homo Sapiens"  //mutable
    var name: String       // We only define the type here
    
    init(name: String) {   // This function isn't called explicitly.
        self.name = name
    }
    
    func speak() {
        print("Hello! I am a \(self.species)")
    }
}

var myPerson = Person(name: "Tony") // Initialize the person
myPerson.species = "Homo Erectus"
myPerson.speak()



class User {
    var intelligence = 0
    func studyFor(topic: String, hours: Int) {
        print("I am studying \(topic) for \(hours) hours")
    }
}
var user = User()
user.studyFor(topic: "Math", hours: 12)

//classes are reference types
