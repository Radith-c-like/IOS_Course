// 1) Создайте массив учеников из 12 мальчиков

var student : [String] = ["Ivan", "Gleb", "Igor", "Misha", "Jaroslav", "Dima", 
                       "Nikita", "Vova", "Kolya", "Bob", "Alex", "Vlad"]

  // 2) Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert.
  // Выведите результат в консоль

student.append("Alina")
student.append("Diana")
student.insert("Katya", at: 0)
student.insert("Jul", at: 3)
student.append("Nastya")
student.append("Sasha")
student.append("Kira")

// Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек. См. Удаление по
// диапазону. Выведите результат в консоль

student.removeSubrange(17..<19)
student.removeSubrange(1...7)

// 4) Создайте массив оценок от 0 до 5 и второй — от 6 до 10. Объедените два массива в один.

let NotesFrom0to5 : [Int] = [3,2,5,1,0]
let NotesFrom6to10 : [Int] = [10,6,7,9,8]

let notes: [Int] = NotesFrom0to5 + NotesFrom6to10
 
//5) Присвойте каждому ученику оценку. Так, чтобы в консоли получилось примерно: «Вася — 5 баллов.Неплохо.»

for (puple, note) in zip(student, notes) {
  if note >= 8 {
    print("\(puple) --- \(note) отлично")
  }
  else if note >= 6 {
    print("\(puple) --- \(note) Неплохо, но можно лучше")
  }
  else {
    print("\(puple) --- \(note) старайся лучше")
  }
}


//6) Создайте массив из чисел. Числа - это купюры в долларах. Посчитать количество денег и вывести в консоль

let banknotes: [Int] = [5,20,100,10, 1, 1]
var money : Int = 0
for banknote in banknotes {
  money += banknote
}
print(money)