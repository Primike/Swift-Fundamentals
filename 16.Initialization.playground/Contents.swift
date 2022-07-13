import UIKit

//failable init
struct Student {
    var id: String
    init?(id: String) {
        if id.count == 10 {
            self.id = id
        } else {
            return nil
        }
    }
}

class Food {
    let name: String
    // designated initializer
    init(name: String) {
        self.name = name
    }
    // convenience initializer
    convenience init() {
        self.init(name: "not sure yet")
    }
}
let food = Food(name: "Cheese") // name will be "Cheese"
let food2 = Food()               // name will be "not sure yet"
print(food2.name)
