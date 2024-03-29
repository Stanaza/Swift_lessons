import UIKit

//1. Создать аккаунт на гитхабе и скинуть туда д/з
//2. Дан массив, элементы которого это картежи с типами данных Int и String. Необходимо:
//- Возвести Int в квадрат
//- Отфильтровать только четные элементы
//- Упорядочить строки по алфавитному возрастанию, можно обозначить букву на любом языке.
//
//p.s алфовитное возрастание - это когда начинается с a и идет потом б, в, г, д и т.д
//
//Соответсвенно на англисйком начинается с a, b, c, d и заканчивается x,y,z.

let arrayOfTuples: [(Int, String)] = [(11, "NewYork"), (12, "Lissabon"), (22, "Moscow"), (42, "Saint-P"), (36, "Paris"), (54, "Berlin"), (166,"Astana")]

let formatedArray = arrayOfTuples.map{(Int(pow(Double($0.0), 2)), $0.1)}.filter {$0.0.isMultiple(of: 2)}.sorted { $0.1 < $1.1}

print(formatedArray)

