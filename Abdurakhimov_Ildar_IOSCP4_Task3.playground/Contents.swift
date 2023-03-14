import UIKit

/*Task1
 Класс :  Автомастерская
 Имеет публичный доступ , так как каждый может воспользоваться своим экземпляром , гаражем.
 Пример геттера : Заехать в автомастерскую
 Пример сеттера : Выбрать нужный бокс,  нужного мастера
 Пример публичного доступа : доступ ко всему автомобилю, это передача ключей для последующего ремонта и доступа ко всем узлам авто
 Пример приватного доступа: Каждый мастер выполняет свои работы в своем боксе
*/
protocol GarageCar {
    var box1: Int {get set}
    var box2: Int {get set}
    var box3: Int {get}
    
 
}
class Master: GarageCar {
    var box1: Int = 1
    
    var box2: Int = 2
    
    var box3: Int = 3
    
    var master1: String = "Вася электрик"
    var master2: String = "Вова моторист"
    private  var master3: String = "Петя мастер по грузовым машинам"
}

/*task2*/

class SalaryPerson{
    
    func sum (sum: String){
        print(sum)
    }
    func sum (sum: Int) {
        print(sum)
    }
    func sum (sum: Double){
        print(sum)
    }
}
var salaryJan = SalaryPerson()
salaryJan.sum(sum: "Отпуск")
var salaryFeb = SalaryPerson()
salaryFeb.sum(sum: 400000)
var salaryMar = SalaryPerson()
salaryMar.sum(sum: 4.5)


/*Example1 c помощью метки аргумента*/

 class PersonSalary {
    func summ(salary person1:Int){
        print()
        
}
    func summ(salary person2:String){
        print(person2)
}
    func summ(salary person3:Double){
    }
}
var salaryPerson1 = PersonSalary()
salaryPerson1.summ(salary: "Отпуск2")

/*task3*/

class Phone {
    func internet() {
    print ("there is internet")
}
}

class TabletOverrider: Phone {
    override func internet() {
        super.internet()
    
    }
}
var IPad = TabletOverrider()
IPad.internet()
print("on the tablet there is internet too")
