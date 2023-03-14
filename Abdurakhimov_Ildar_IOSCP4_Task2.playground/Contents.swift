	import UIKit

/*Task1*/

enum CarUnit{
   case lada(country: String, model: String, price: Int)
    case nissan(country: String, model: String, price: Int)
    case mersedesBenz(country: String, model: String, price: Int)
}
var lada = CarUnit.lada(country: "Russia", model: "XRay", price: 1500000)
var nissan = CarUnit.nissan(country: "Japan", model: "Patrol", price: 10000000)
var mersedesBenz = CarUnit.mersedesBenz(country: "Germany", model: "AMG", price: 15000000)
print (nissan)


/*-------------------------------------------------------------------------------------------------------*/

class Teacher{
    var firstName:String
    var lastName:String
    var lesson:String
    var room: Int

    
        init(firstName: String, lastName: String, lesson: String, room: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.lesson = lesson
        self.room = room
 
}
}
    var teacherMath = Teacher.init(firstName: "Нина", lastName: "Васильевна", lesson: "Метематика", room: 7)
print(	"Учитель \(teacherMath.firstName) \(teacherMath.lastName) преподает урок \(teacherMath.lesson) в \(teacherMath.room) кабенете")

/*-------------------------------------------------------------------------------------------------------*/
struct CheesPlayr {
    var name: String
    var countGame: Int
    var rating: Int
}
/*-------------------------------------------------------------------------------------------------------
 Task2*/
/*Композиция

Класс Автомобиль
Класс Двигатель
Уничтожив Класс Автомобиль,  экземпляр класса двигатель уничтожается тоже

 Класс Планета
 Класс Жители планеты
 При уничтожении класаа Плавнета, экзмплляры класса жители уничтожаются в частности
 
 Агрегация
 
 Класс Почтовое приложени
 Класс Почтовый ящик
 Уничтожив Класс почтовое приложение , экземпляр класса почтовый ящик продолжит существование
 
 Класс Телевизор
 Класс Каналы
 Уничтожив класс телевизор, экземпляр класса каналы продолжат существовать
 */


