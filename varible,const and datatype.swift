// 1) Напишите переменные и константы всех базовых типов данных: 
// int, UInt, float, double, string.
// У чисел вывести их минимальные и максимальные значения.


var myVarInt:Int = 10
var myVarUInt:UInt = 128
var myVarDouble:Double = 2.123
var myVarFloat:Float = 2.14
var myVarString:String = "hello"
 

let myLetInt:Int = 10
let myLetUInt:UInt = 128
let myLetDouble:Double = 2.123
let myLetFloat:Float = 2.14
let myLetString:String = "hello"


print(Int.min)
print(UInt.min)
print(Double.leastNonzeroMagnitude)
print(Float.leastNonzeroMagnitude)

print(Int.max)
print(UInt.max)
print(Double.greatestFiniteMagnitude)
print(Float.greatestFiniteMagnitude)



// 2) Создайте список товаров с различными характеристиками (количество, название).
// Используйте typealias.

typealias goods = Array[(count: Int, Name: String)] 

goods = [(10, "T-Shirt"), (7,"Shoes")]

print(shoes)