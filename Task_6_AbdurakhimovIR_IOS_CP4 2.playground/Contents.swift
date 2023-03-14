import UIKit

//task 1
//Алгоритм выполнения

//Coздайте кортеж с тремя параметрами: ваш любимый фильм, ваше любимое число и ваше любимое блюдо. Все элементы кортежа должны быть именованы.
//Одним выражением запишите каждый элемент кортежа в три константы.




var myFavorites:(String, Int,String) = (myFavoriteCinema: "Начало",
                  myFavoriteNumber: 7,
                  myFavoriteDish: "Шашлык")


let (myFavoriteCinema, myFavoriteColor, myFavoriteDish) = myFavorites

//Создайте второй кортеж, аналогичный первому по параметрам, но описывающий другого человека (с другими значениями).
var anotherManFavorites:(String, Int,String)  = (anotherManFavoritesCinema: "Операциия Ы",
    anotherManFavoritesNumber: 13,
    anotherManFavoritesDish: "Винегрет"
)
 //Обменяйте значения в кортежах между собой (с использованием дополнительного промежуточного кортежа).

var tempExchangeFavorite = myFavorites
myFavorites = anotherManFavorites
anotherManFavorites = tempExchangeFavorite

//Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
 
let newCompilationFavoriteNumbers = ("мое любимое число" ,myFavorites.1 , "другого чела любимое число" , anotherManFavorites.1, "Разница чисел между двух кортежей = ", myFavorites.1 - anotherManFavorites.1 )

//----------------------------------------------------------------------
//Task2
//Представьте, что вы работаете над приложением электронный дневник. Создайте словарь, где ключом будет имя студента, а значением будет другой словарь из 3 элементов, содержащий название предмета и оценку.


let journal = ["Вася" : ["Математика": 4, "Русский язык": 5, "Литература": 4]]



//------------------------------------------------------------------------
//Task3
/*ы разрабатываете приложение “Шахматы”. Вашей задачей будет создать фигуру на игровом поле.
 
 Алгоритм выполнения
 
 Создайте псевдоним типа (typealias) Chessman для типа словаря [String: (alpha:Character, num: Int)?]. Данный тип описывает шахматную фигуру на игровом поле.
 В ключе словаря должно храниться имя фигуры, например «Белый король», а в значении — кортеж, указывающий на координаты фигуры на игровом поле. Если вместо кортежа находится nil, это означает, что фигура убита (не имеет координат на игровом поле).
 
 Создайте переменный словарь Chessmans типа Chessman и добавьте в него три произвольные фигуры, одна из которых не должна иметь координат.
 
 Создайте конструкцию if-else, которая проверяет, убита ли переданная ей фигура (элемент словаря Chessmans), и выводит на консоль информацию либо о координатах фигуры, либо о ее отсутствии на игровом поле.*/
typealias cheessmano = [String:(alpha:Character, num: Int)?]
var cheessmanso: cheessmano = ["WhiteKing": ( alpha: "e", num:  1),
                             "BlackKing": (alpha:"d", num: 1),
                             "BlackQueen": nil]

if let cheesmanoPlays = cheessmanso["WhiteKing"],
    let value = cheesmanoPlays {
print(value.alpha , value.num)
}
else {
print("Битая фигура")
}

//4 Вам необходимо доработать программу из Задачи 3 таким образом, чтобы она автоматически анализировала не одну переданную ей фигуру, а все фигуры, хранящиеся в переменной Chessmans.

typealias cheessman = [String:(alpha:Character, num: Int)?]
var cheessmans: cheessman = ["WhiteKing": ("e",  1),
                            "BlackKing": ("d",  1),
                            "BlackQueen": nil]
for ( key, value) in cheessmans {
if cheessmans.isEmpty {
print("Фигура бита ")
}
else {
    print("Фигура \(key) расположена на клетке \(String(describing: value))")
}
}
