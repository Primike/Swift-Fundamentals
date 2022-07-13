import UIKit

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")



func lookForSomethingIn(dictionary: [String: Int], forKey key: String) -> Int? {    //Optional
    if let value = dictionary[key] {
        return value
    }
    else {
        return nil
    }
}
var jerseyNumbers = ["Wilson": 3, "Lockett": 16]
var jerseyNumber = lookForSomethingIn(dictionary: jerseyNumbers, forKey: "Wilson")
if let num = jerseyNumber {         //unwraping optional return value
    print(num)
}



func buyBicycle(cost: Int) -> (Int) -> String {     //Nested functions
    print("You just paid $\(cost) for your new bike!")
    func cycle(miles: Int) -> String {
        return "Have a great ride! See you in \(miles) miles!"
    }
    return cycle
}
print(buyBicycle(cost: 500)(30))



func maxMinAvg(arr: [Int]) -> (Int, Int, Double) {
    let max = arr.max()!
    let min = arr.min()!
    let sumArray = arr.reduce(0, +)
    let avg = Double(sumArray / arr.count)
    return (max, min, avg)
}

let result = maxMinAvg(arr: [10,20,30,40])
print(result.0)   // can also use result.max



//Function Overloading can define func of same name if parameters are different types



func canThrowAnError() throws {
}

do {
    try canThrowAnError()
} catch {
    print("QWeqwe")
}


let age = 4
assert(age >= 0, "A person's age can't be less than zero.")


if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than 0.")
}

