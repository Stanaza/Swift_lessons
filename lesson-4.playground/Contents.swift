import UIKit

var greeting = "Hello, playground"

var array = [1, 2, 3, 4]
func sortedCustom(a: Int, b: Int) -> Bool{
    if(a > b) {
        return true
    } else {
        return false
    }
}

array.filter(sortedCustom(a: 12, b: 3))
