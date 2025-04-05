// 1) Напишите с помощью строк своё резюме:
//  имя, фамилия, возраст, где живете, хобби и т.п


let myName : String = "Rodion"
let mySureName : String = "Chramcov"
let myCity : String =  "Minsk"
let myHobby : String = "IOS Programming"


// 2) Соберите из этих строк 1 большую (вспоминаем интерполяцию) и выведите в консоль

let cv = "my name is \(myName)\nmy surename is\(mySureName)\nmy city is\(myCity)\nmy hobby is\(myHobby)"

print(cv)


// 3) Напишите 10 строк, соберите их с помощью интерполяции и поставьте в нужных местах
// переносы на новую строку и пробелы (см. \n и \t)

let s1 : String = "Sun of the sleepless! Melancholy star!"
let s2 : String = "Whose tearful beam glows tremulously far,"
let s3 : String = "That show’st the darkness thou canst not dispel,"
let s4 : String = "How like art thou to joy remember’d well!"
let s5 : String = "gleams the past, the light of other days,"
let s6 : String = "Which shines, but warms not with its powerless rays"
let s7 : String = "A night-beam Sorrow"
let s8 : String = "Distinct, but distant,"
let s9 : String = "but oh, how cold!"
let s10 : String = "watcheth to behold,"

let res : String = "\(s1)\n\(s2)\n\(s3)\n\(s4)\(s5)\n\(s6)\n\(s7)\t\(s8)\n\(s9)\t\(s10)"

print(res)


// 4) Разбейте собственное имя на символы, перенося каждую букву на новую строку

var myVerticalName : String = ""
var index = myName.startIndex
myVerticalName.append(myName[index])
myVerticalName.append("\n")
index = myName.index(after: index)
myVerticalName.append(myName[index])
myVerticalName.append("\n")
index = myName.index(after: index)
myVerticalName.append(myName[index])
myVerticalName.append("\n")
index = myName.index(after: index)
myVerticalName.append(myName[index])
myVerticalName.append("\n")
index = myName.index(after: index)
myVerticalName.append(myName[index])
myVerticalName.append("\n")
index = myName.index(after: index)
myVerticalName.append(myName[index])
myVerticalName.append("\n")

print(myVerticalName)



// 5) Создайте переменную типа Int и переменную типа String.
// Тип Int преобразуйте в String и с помощью бинарного оператора сложите 2 переменные в одну
// строку.


var num: Int = 13
var str: String = "arg"
var resultStr: String = String(num) + str

print(resultStr)


// 1) Создайте 5-6 строк с названиями городов. Затем создайте 5-6 строк с названиями стран.
// Если название города совпадает со страной — выведите в консоль название страны, города и
// слово: ПРАВИЛЬНО!

let country1: String = "Китай"
let country2: String = "Бразилия"
let country3: String = "Япония"
let country4: String = "Франция"
let country5: String = "Австралия"


let city1: String = "Пекин"
let city2: String = "Бразилия"
let city3: String = "Токио"
let city4: String = "Париж"
let city5: String = "Канберра"

if country1 == city1 {
  print("\(country1)  \(city1)  ПРАВИЛЬНО!")
}


if country2 == city2 {
  print("\(country2)  \(city2)  ПРАВИЛЬНО!")
}


if country3 == city3 {
  print("\(country3)  \(city3)  ПРАВИЛЬНО!")
}


if country4 == city4 {
  print("\(country4)  \(city4)  ПРАВИЛЬНО!")
}


if country5 == city5 {
  print("\(country5)  \(city5)  ПРАВИЛЬНО!")
}



// 2) Возьмите созданные страны и проверьте их: содержат ли они букву A(буква на ваш выбор).

let country1: String = "Китай"
let country2: String = "Бразилия"
let country3: String = "Япония"
let country4: String = "Франция"
let country5: String = "Австралия"

for chr in country1 {
  if chr == "А" {
    print("\(country1) содержит букуву A")
  }
}

for chr in country2 {
  if chr == "А" {
    print("\(country2) содержит букуву A")
  }
}

for chr in country3 {
  if chr == "А" {
    print("\(country3) содержит букуву A")
  }
}

for chr in country4 {
  if chr == "А" {
    print("\(country4) содержит букуву A")
  }
}

for chr in country5 {
  if chr == "А" {
    print("\(country5) содержит букуву A")
  }
}