import UIKit


/*
 Задача 1
 Вы разрабатываете библиотеку аудиотреков. Вам необходимо реализовать одну из категорий музыки, наполненную треками.
 
 Алгоритм выполнения
 
 Создайте объект трек.
 Определите в нем свойства имя, исполнитель, длительность и страна. Подумайте, где можно использовать enum.
 Создайте класс категория.
 Объявите в нем свойства название категории, список треков и количество треков в списке (экспериментируйте с “ленивыми” и вычисляемыми свойствами).
 Определите методы добавления и удаления треков в эту категорию.
 */

enum Country: String {
    case russia = "ru"
    case usa = "us"
    case italy = "it"
}

class Track {
    let name:String
    let artist: String
    let duration: Int
    let country: Country
    
    init(name: String, artist: String , duration: Int , country: Country) {
        self.name = name
        self.artist = artist
        self.duration = duration
        self.country = country
        print("Трек \(name) - \(artist) успешно добавлен в память")
    }
}



class Category {
    let nameOfCategory: String
    
    private  var trackList: [Track] = []
    var numberTrackList: Int {
        return  trackList.count
    }
    
   var trackNames: [String] {
       return   trackList.map {$0.name}
        
    }
    var nameArtist: [String] {
        return trackList.map {$0.artist}
    }
    
    init(nameOfCategory: String) {
        self.nameOfCategory = nameOfCategory
    }
    
    func addTrack (_ track: Track){
            if !trackList.contains (where: {$0.name == track.name}) {
            trackList.append(track)
            print("Трек \(track.name) - \(track.artist) успешно добавлен в категорию \(nameOfCategory)")
            
        }
        else {
            print("Трек \(track.name) - \(track.artist) уже существует в трек листе")
        }
        
    }
    
    func moveTrack (track : Track, to category: Category){
        if let index = trackList.firstIndex(where: {$0.name == track.name && $0.artist == track.artist}){
            trackList.remove(at: index)
            category.trackList.append(track)
        }
    }
    
    func removeTrack (_ track: Track){
        if let index = trackList.firstIndex(where:{$0.name == track.name}){
            print("Трек\(track.name) - \(track.artist) удален из списка \(nameOfCategory)")
            trackList.remove(at: index)
        }
        
    }
    
}

let track1 = Track(name: "Evening Winds", artist: "Николай Беспалов", duration: 4 , country: .russia)
let track2 = Track(name: "Blame on me", artist: "Gioli Assia", duration: 3 , country: .italy)
let track3 = Track(name: "Trafic", artist: "DJ Tiesto", duration: 5 , country: .usa)

let technoCategory = Category(nameOfCategory: "Techno")


technoCategory.addTrack(track1)
technoCategory.addTrack(track2)
technoCategory.addTrack(track3)

print("Категория:\(technoCategory.nameOfCategory)")
print("Колличество треков:\(technoCategory.numberTrackList)")
print("Список треков:\(technoCategory.nameOfCategory)")

technoCategory.removeTrack(track1)
print("Категория:\(technoCategory.nameOfCategory)")
print("Колличество треков:\(technoCategory.numberTrackList)")
print("Список треков:\(technoCategory.nameOfCategory)")
/*Задача 2
 Доработайте свою библиотеку так, чтобы в ней было несколько категорий.
 
 Алгоритм выполнения
 Создайте класс библиотеки. Этот класс будет аналогичен классу категории, только хранить он должен список категорий.
 */

class Library  {
    
    let genre: String
    
    private  var ganreList: [Category] = []
    var numberGanreList: Int {
        return  ganreList.count
    }
    
    var ganreNames: [String] {
        return   ganreList.map {$0.nameOfCategory}
        
    }
    
    
    init(genre: String) {
        self.genre = genre
        
    }
    
    func addCategory (_ category: Category){
        if !ganreList.contains (where: {$0.nameOfCategory == category.nameOfCategory}) { // проверка на уникальность в треклисте
            ganreList.append(category)
            print("Категория \(category.nameOfCategory) - успешно добавлена \(self.genre)")
            
        }
        else {
            print("Категория  \(category.nameOfCategory) - уже существует в \(self.genre) ")
        }
        
    }
    func moveTrack (track: Track, from category1: Category, to category2: Category){
        category1.moveTrack(track: track, to: category1)
    }
    
    func removeTrack (_ categorу: Category){
        if let index = ganreList.firstIndex(where:{$0.nameOfCategory == categorу.nameOfCategory}){ // уделение из трек листа переданный трек
            print("Категория \(categorу.nameOfCategory) - успешно удалена из\(self.genre)")
            ganreList.remove(at: index)
        }
        
    }
    
}
let track4 = Track(name: "Кукушка", artist: "Виктор ЦОЙ", duration: 4 , country: .russia)
let track5 = Track(name: "Unforgiven", artist: "Metallica", duration: 5 , country: .usa)
let track6 = Track(name: "Something", artist: "BlaVla", duration: 5 , country: .italy)

let rockCategory = Category(nameOfCategory: "Rock")
rockCategory.addTrack(track4)
rockCategory.addTrack(track5)
rockCategory.addTrack(track6)

let library = Library(genre: "MyFavorLib")

library.addCategory(technoCategory)
library.addCategory(rockCategory)


/*
 Задача 3 * (задача со звездочкой):
 Преобразуйте классы так, чтобы в пределах вашей библиотеки можно было обмениваться треками между категориями
 */

print("Категория:\(technoCategory.nameOfCategory)")
print("Колличество треков:\(technoCategory.numberTrackList)")
print("Список треков:\(technoCategory.nameArtist)")
print("Категория:\(rockCategory.nameOfCategory)")
print("Колличество треков:\(rockCategory.numberTrackList)")
print("Список треков:\(technoCategory.nameOfCategory)")
rockCategory.moveTrack(track: track6, to: technoCategory)
print("Категория:\(technoCategory.nameOfCategory)")
print("Колличество треков:\(technoCategory.numberTrackList)")
print("Список треков:\(technoCategory.nameOfCategory)")
print("Категория:\(rockCategory.nameOfCategory)")
print("Колличество треков:\(rockCategory.numberTrackList)")
print("Список треков:\(technoCategory.nameOfCategory)")

