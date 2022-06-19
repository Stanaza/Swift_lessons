import UIKit

// - Посчитать сумму отдельно целых и отдельно дробных частей чисел 2.5, 9.7, 6.9, 8.2

let sumOfWholeParts = Int(2.5) + Int(9.7) + Int(6.9) + Int(8.2)

func getFraction(number: Double) -> Double {
    return number.truncatingRemainder(dividingBy: 1)
}

let sumOfFractionalParts = getFraction(number: 2.5) + getFraction(number: 9.7) + getFraction(number: 6.9) + getFraction(number: 8.2)

print("сумма целых частей чисел \(sumOfWholeParts)")
print("сумма дробных частей чисел \(sumOfFractionalParts)")

// - Сделать проверку является ли число четным: 13, 2, 20, 21, 76

func checkParity(num: Int)-> Void {
    print(num.isMultiple(of: 2) ? "\(num) четное" : "\(num) нечетное")
}


checkParity(num: 13)
checkParity(num: 2)
checkParity(num: 20)
checkParity(num: 21)
checkParity(num: 76)


