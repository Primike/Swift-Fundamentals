import UIKit

//alternative syntax that you may see:
var alternativeToDoList = Array<String>()


var arrayOfInts = [10, 20, 30, 40, 50]
print("(arrayOfInts[0...1])")  // => "[10, 20]"
print("(arrayOfInts[1..<4])")  // => "[20, 30, 40]"
print("(arrayOfInts[2...3])")  // => "[30, 40]"



var threeDoubles = Array(repeating: 0.0, count: 3)
threeDoubles.insert(1, at: 0)
threeDoubles.remove(at: 1)



let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]



