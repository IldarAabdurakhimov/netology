import UIKit
/*
Абстракция
 
Пример:
Протокол Музыкальный инструмент  содержит обьект к примеру гитара, его  свойства это бренд , из какого материала инструмент, и метод создание музыки
Протокол Сумка  содержит свойство из чего сделана сумка, глубина, размер, количество корманов. Так же содержит в себе метод под что может использоваться сумка
Протокол Ноутбук содержит обьект к примеру Макбук М10,  свойства такие как тип процесора, озу и т,д , метод работы на нем зависит конкретно от свойств или мощности ноутбука создание дизайнов , програмирование , интернет серфинга
 */
protocol Instrument {
    var brand: String {get}
    var material: String {get}
    var isElectro: Bool {get}
    
    func windInstr()
    func drum()
    func keyboard()
    
}

/* Инкапсуляция
 
 Пример:
 Файл, документ где администратор, владелец файла, документа может ограничить доступ на чтение и изменение
 Репозиторий на гитхабе где мы можем добавить колоборатора а можем удалить его
 Сигнализация на машине , доступ к управленю авто имеет только владелец авто, остальным не доступно
 
 */
protocol docs {
    func readFile()
    func writeFile()
}

class googleDoc: docs {
    func readFile() {}
    func writeFile() {}
    private func readWrite(){}  // скрыто внутри класса наружу
}

var file = googleDoc()
googleDoc.init()// func readWrite не доступна из вне. Доступно только read и write


/* Наследование
 
 Пример:
 Класс Инструмент музыкальный - дочерний класс гитара , пианино
 Класс Одежда  -  дочерний класс Верхнее или нижнее белье
 Класс Оружие  -  дочерний класс автомат Калашникова
 Все дочерние классы наследуют свойства родительского класса , но не наоборот!
  */

class Instruments {
    var brand: String = ""
    func isElectric(Elec : Bool	){}
    
    /* init (_brand2 : String){
     self.brand2 = _brand2
     }
     */
}

class Guitar: Instruments {
}
let guitar  = Instruments()
var frets: Int  = 12
var strigs: Int = 6
guitar.brand = "yamaha" // брэнд унаследован от класса
print(guitar.brand)

/*
 Полиморфизм
 
 Пример
Класс Оркестр - на разных инструментах играется одна композиция
Класс Одежда - у куртки и нижнего белья комфорт и защита от внешней среды
Класс Оружие -  может быть разное, но цель одна уничтожение причинение ущерба противнику

*/
class Orhcestra {
    let name: String
    init(name: String) {
        self.name = name
    }
    func play(){
        print("Lylu Was Here")
    }
}

class Piano	: Orhcestra {
    func playOnKeyboard() {}
}

class Drums: Orhcestra {
    func playOnDrum(){}
}
class Saksaphone: Orhcestra {
    func playOnDududu() {}
}
let pianoMan = Piano(name: "Мария")
pianoMan.playOnKeyboard()
pianoMan.play() // играют одну песню
let drumMan = Drums(name: "Саша")
drumMan.playOnDrum()
drumMan.play() // играют одну песню
let saksaphoneMan = Saksaphone(name: "Женя")
saksaphoneMan.playOnDududu()
saksaphoneMan.play() // играют одну песню


/* Задача 2

 Класс: Одежда
 Обьект: Куртка
 Свойства: Теплая
 Метод: Согравает
 
 Класс: Игрушки
 Обьект: Кукла
 Свойства: Интерактивная
 Метод: Издает звуки, привлекает внимаение ребенка, побуждает к игре,

 Класс: Оружие
 Обьект: Лук
 Свойства: Деревянный
 Метод: Стрелять стрелой стрелком
 */


