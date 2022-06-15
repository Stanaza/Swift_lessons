import UIKit

//1. Функции сложения, вычитания, умножения и деления (перегрузка функций)


func calculate(x: Int, y: Int, operation: String) -> Int {
    switch operation {
    case "+":
        return x+y
    case "-":
        return x-y
    case "/":
        return x/y
    case ":":
        return x/y
    case "*":
        return x*y
    default:
        return 0
    }
}

func calculate(x: Double, y: Double, operation: String) -> Double {
    switch operation {
    case "+":
        return x+y
    case "-":
        return x-y
    case "/":
        return x/y
    case ":":
        return x/y
    case "*":
        return x*y
    default:
        return 0.0
    }
}


calculate(x: 2, y: 3, operation: "*")
calculate(x: 3.3, y: 3.3, operation: "+")

// 2. Вычислить сумму цифр четырехзначного числа 4263

func sumOfDigitsOfnumber(number: Int) {
    let stringOfNum = String(number)
    var sumOfDigits: Int = 0;
    
    for char in stringOfNum {
            sumOfDigits += char.wholeNumberValue!
    }
    
    print("сумма цифр числа \(number) равна \(sumOfDigits)")
}

sumOfDigitsOfnumber(number: 4263)

// 3. Функция сравнения строк - "авбва" больше "ввш"

func comapreStrings(firstStr: String, secondStr: String ) {
    if firstStr.count > secondStr.count {
        print("строка \(firstStr) больше чем строка \(secondStr)")
    } else if firstStr.count < secondStr.count {
        print("строка \(firstStr) меньше чем строка \(secondStr)")
    } else {
        print("строка \(firstStr) равна строке \(secondStr)")
    }
}

comapreStrings(firstStr: "авбва", secondStr: "ввш")


// 4. Циклический вызов функций - поломать приложение*
//while true {
//    print("ломай меня полностью")
//}

//5. Функция возведения в степень с дефолтным параметром

func exponentiate(number: Int, toDegree: Int = 2) {
    var result = number
    var count = toDegree
    while (count > 1) {
        result = result * number
        count = count - 1
    }
    
    print("число \(number) в степени \(toDegree ) равно \(result)")
}
exponentiate(number: 3)
exponentiate(number: 3, toDegree: 3)


//6. Функция вычисления факториала числа

func calculateFactorialOfNumber(number: Int = 1) {
    var result = 1
    var currentNumb = number
    while currentNumb > 1 {
        result = result * currentNumb
        currentNumb = currentNumb - 1
    }
    print("факториал числа \(number) равен \(result)")
}
calculateFactorialOfNumber(number: 5)
