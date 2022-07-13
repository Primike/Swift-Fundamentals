import UIKit

class Car { }
class Acura: Car { }
class Lexus: Car {
    func revEngine() {
        print("Vroom!")
    }
}
let luxuryCars = [Acura(), Lexus(), Acura(), Lexus()]   //array is a Car type

for car in luxuryCars {
    if let lexus = car as? Lexus {      //type casting checks if car is Lexus type
        lexus.revEngine()
    }
}



struct Calculator {
    static func calculateGamesPlayed() -> Int {
        var games: [Int] = []
        for i in 1...5000 {     //takes 5 secs
            games.append(i)
        }
        return games.last!
    }
}
struct Player {
    var name: String
    var team: String
    var position: String

    lazy var gamesPlayed = {        //holds off calculation after initialization. Stores value after calculation
      return Calculator.calculateGamesPlayed()
    }()
    lazy var introduction = {
        return "Now entering the game: \(name), \(position) for the \(team)"
    }()
}
var jordan = Player(name: "Michael Jordan", team: "Bulls", position: "Shooting Guard")
print(jordan.introduction)
print(jordan.gamesPlayed)

