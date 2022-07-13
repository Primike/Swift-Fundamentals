import UIKit

enum Meal: Int, CaseIterable {
    case breakfast
    case brunch 
    case lunch
    case dinner
}

let lunch = Meal(rawValue: 1)
print(lunch!)

for meal in Meal.allCases {
    print(meal)
}


enum Exercise {
    case walking
    case running(destination: String)
    case rowing
    case swimming(miles: Int)
}

let running = Exercise.running(destination: "Grocery Store")
print(running)
