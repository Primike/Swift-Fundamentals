import UIKit

func tossCoin() -> String {
    print("Tossing a Coin!")
    let random = Bool.random()
    var result: String
    if random {
        print("Heads")
        result = "Heads"
    }
    else {
        print("Tails")
        result = "Tails"
    }
    return result
}


func tossMultipleCoints(_ x:UInt) -> Double {
    if x == 0 {
        print("Give a positive integer please")
        return Double(0)
    }
    
    var heads = 0
    var tails = 0
    for _ in 1...x {
        let y = tossCoin()
        if y == "Heads" {
            heads = heads + 1
        }
        if y == "Tails" {
            tails = tails + 1
        }
    }
    
    if heads == 0 {
        print("No heads flipped")
        return Double(tails)
    }
    else if tails == 0 {
        print("No tails flipped")
        return Double(heads)
    }
    
    print("Ratio of heads to tails is:")
    return Double(heads/tails)
}

print(tossMultipleCoints(2))

