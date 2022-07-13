import UIKit

var type: String = "Rectangle"
var description: String = "A quadrilateral with four right angles"
var width: Int = 5
var height: Double = 10.5
var area: Double = Double(width) * height
height += 1
width += 1
area = Double(width) * height
// Note how you can "interpolate" variables into Strings using the following syntax
print("The shape is a \(type) or \(description) with an area of \(area)")




for i in 1...255 {
    print(i)
}

var x = 0
while x < 256 {
    print(x)
    x += 1
}

for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        continue
    }
    else if i % 3 == 0 || i % 5 == 0 {
        print(i)
    }
}

for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("Fizz Buzz")
    }
    else if i % 3 == 0 {
        print("Fizz")
    }
    else if i % 5 == 0 {
        print("Buzz")
    }
    else {
        print(i)
    }
}


var array: [String] = [String]()

for i in 1...255 {
    array.append("\(i)")
}

var first: String
var second: String
var indexFirst: Int
var indexSecond: Int

for _ in 1...100 {
    first = String(Int(arc4random_uniform(255) + 1))
    second = String(Int(arc4random_uniform(255) + 1))

    indexFirst = array.firstIndex(where: {$0 == first})!
    indexSecond = array.firstIndex(where: {$0 == second})!

    array[indexFirst] = second
    array[indexSecond] = first
}

print(array.count)

let indexOf42 = array.firstIndex(where: {$0 == "42"})!
array.remove(at: indexOf42)

print("We found the answer to the ultimate question of life, the universe, and everything at index \(indexOf42)")
print(array.count)
