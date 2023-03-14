import UIKit
//task 1
//определяем функции принимащую замыкание
func calculateFuelUsage (calculateFuel:(Double, Double) -> Double){
    let weight = 1000.0 // вес спустника в кг
    let distance = 5000000.0 // растрояние полета в метрах
    let fuelUsage = calculateFuel(weight,distance)
    print("Расход топлива состовляет: \(fuelUsage) л")
}
//определяем первое замыкание для расчета топлива порученного первому сотруднику
let calculateFuel1: (Double,Double) -> Double = { weight, distance in
    let fuelUsage = weight * distance / 10000.0
    return fuelUsage
}
//определяем второе замыкание для расчета топлива порученного второму сотруднику
let calculateFuel2: (Double,Double) -> Double = { weight, distance in
    let fuelUsage = (weight / 1000.0) * (distance / 1000.0)
    return fuelUsage
}
//вызываем метод для первого замыкания
calculateFuelUsage(calculateFuel: calculateFuel1)

//вызываем метод для второго замыкания
calculateFuelUsage(calculateFuel: calculateFuel2)


//task2

//определяем первое замыкание для расчета топлива порученного первому сотруднику
let calculateFuel3 = {$0 * $1 / 50000.0}

//определяем второе замыкание для расчета топлива порученного второму сотруднику
let calculateFuel4 = {($0 / 100.0) * ($1 / 200.0)}

calculateFuelUsage(calculateFuel: calculateFuel3)

calculateFuelUsage(calculateFuel: calculateFuel4)


//task 3
calculateFuelUsage {(weight, distance) in
   let fuelUsage2 = weight * distance / 20000.0
    return fuelUsage2
    }

// ключевое слово "Param" не исчезло , а ялвяется именем параметра функции "example" и не является частью синтаксиса замыкания

