import UIKit

var displayName = {(name:String) -> String in
  print (name)
  return ("Hello my name is \(name)")
}

displayName("Slim Shady")



//closure
var myFunction: ((Int) -> Bool) = { number in
    if number > 3 {
        return true
    }
    return false
}
print(myFunction(34))



func filterWithPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filteredNumbers = [Int]()
    for num in numbers {
        // perform a condition check
        if closure(num) {
            filteredNumbers.append(num)
        }
    }
    return filteredNumbers
}
let filteredLst1 = filterWithPredicateClosure(closure: { num in
    return num < 5
}, numbers: [1,2,3,4,5,10])
print(filteredLst1)



func greaterThanThree(value: Int) -> Bool {
    return value > 3
}
// pass in greaterThanThree as a function
let filteredList = filterWithPredicateClosure(closure: greaterThanThree(value:), numbers: [10,5,1,2,0])
print(filteredList)
