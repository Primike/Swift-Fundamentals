import UIKit

class Person {
    var species = "H. Sapiens"
    var name: String
    init(name: String) {
        self.name = name
    }
    func speak() {
        print("Hello! I am a \(self.species) and my name is \(self.name)")
    }
}

class Developer: Person {
    var favoriteLanguage: String
    init(name: String, favoriteLanguage: String) {  // no override b/c different parameters
        self.favoriteLanguage = favoriteLanguage
        super.init(name: name)
    }
    override func speak() {
        print("Hello! I am a Developer! My name is \(self.name)")
    }
}

var myDeveloper: Developer = Developer(name: "Chris", favoriteLanguage: "Swift")
myDeveloper.speak()



//Chaining
class Building {
    var health = 100
    
    func takeDamage(_ damage: Int) -> Self { // Used Self for chaining
        health -= damage
        return self                              // Returned value is self to chain
    }
}
var building = Building()
building.takeDamage(10).takeDamage(20) //first damage returns building instance


class House: Building {
    var door = "closed"
    
    func openDoor() -> House {
        door = "open"
        return self
    }
}
var house = House()
house.takeDamage(10).openDoor() //damage returns house instance
print(house.health)
