import UIKit
enum TVChanel {
    case news
    case sport
    case music
    case movies
    case disney
}

class Television {
    var brandAndModel:String
    var isOn:Bool = false
    var curentChanel:TVChanel?
    init(brandAndModel: String){
        self .brandAndModel = brandAndModel
  
    }

func showCurentChanel() {
    if isOn == true {
      	  if  let chanel = curentChanel {
        print("U're watching chanel : \(chanel)")
    }
    }
    else if isOn == false {
        print("TV \(brandAndModel),is torned off")
        
    }
}
}
 let television1 = Television(brandAndModel: "LG Oled")
 television1.isOn = true
 television1.curentChanel = TVChanel.movies
 television1.showCurentChanel()
 television1.isOn = false
 television1.showCurentChanel()



/*Задача 2
Время идет, рынок и потребители развиваются, и ваша компания набирает ритм. Поступают все новые и новые требования к эволюции устройств. Перед вами снова инженерная задача — обеспечить пользователей практичным устройством.

Алгоритм выполнения

Создайте новый класс Телевизор (с другим названием класса), который будет уметь все, что и предыдущий.

Реализуйте структуру настроек (struct):
громкость от 0 до 1, то есть могут быть промежуточные значения. (подумайте, какой тип использовать); показывать цветом или черно-белым (подумайте, какой тип данных лучше всего использовать).

Интегрируйте Настройки в новый класс Телевизор.

Переопределите метод “что сейчас по телеку” из класса родителя. Вызовите метод и покажите, что сейчас идет по телевизору, учитывая настройки.
 */

struct TvSettings {
    var volume: Float
    var IsCollored: Bool
}

class SmartTV: Television {
    var settings: TvSettings // свойство для хранения настроек телевизора
    
    init(brandAndModel: String, settings: TvSettings){ // инициация
        self.settings = settings
        super.init(brandAndModel: brandAndModel)
    }
    override func showCurentChanel() { // Переопределение метода от суперкласса
        if isOn == true {
            if  let chanel = curentChanel{
                let colored = settings.IsCollored ? "color":"black and white"
                let sound = settings.volume < 0.1 ? "winhout sound":"with sound"
                print("U're watching chanel : \(chanel) in \(colored) \(sound)")
                
        }
            
        }
        else if isOn == false {
            print("TV \(brandAndModel),is torned off ")
        
        }
        }
}
let settings = TvSettings(volume: 0.0, IsCollored: true)
let smartTV = SmartTV(brandAndModel: "Xiaomi Smart", settings: settings)
smartTV.isOn = true
smartTV.curentChanel = TVChanel.music
smartTV.showCurentChanel()
smartTV.settings.IsCollored = false
smartTV.showCurentChanel()



