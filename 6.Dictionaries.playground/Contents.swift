import UIKit

var myDictionary = [String: Int]()

var myDict2 = [
    "Kobe": 24,
    "Lebron": 23,
    "Rondo": 9
]

var jerseyNumber = myDict2["Kobe"]
print(jerseyNumber)     //returns optional incase key does not exist.
print(jerseyNumber!)    //unwrap optional

if let x = myDict2["Lebron"] {
    print(x)
}

myDict2["Lebron"] = nil //Remove key

var lebronsNumber = myDict2.removeValue(forKey: "Rondo")

for (key, value) in myDict2 {
    print("The key is \(key) and the value is \(value)")
}

for x in myDict2 {
    print(x)
}
