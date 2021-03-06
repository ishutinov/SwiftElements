//: [Назад](@previous)
import Foundation
//: ## Protocol
//: > Протоколы не содержат в себе каких-либо действий. Они лишь содержат в себе описания свойств и методов без реализации.
//: Основная необходимость протоколов заключается в том, чтобы описывать какое-либо конкретное поведение.
/// Протокол, содержащий в себе базовые свойства любого игрока.
protocol Novice {
  
  /// Количество жизней
  var hp: Int { get set } // Мы явно указываем, что свойство может в том числе и изменяться.
  
  init(hp: Int)
  
  /// Базовые умение самолечения.
  func firstAid()
}

// Базовое поведение Аколита.
protocol Acolyte {
  func heal(hero: Hero)
}
//: Наш герой будет аколитом, поэтому он должен иметь все свойства и методы как Новичка так и Аколита
//: > Особенностью Xcode является то, что если имплементировать объекту *Протокол*, то вы автоматически получите предложение применить к объекту всю функциональность указанного *Протокола*.
class Hero: Novice, Acolyte {

  var hp: Int
  
  required init(hp: Int) {
    self.hp = hp
  }
  
  func firstAid() {
    self.hp += 10
  }
  
  func heal(hero: Hero) {
    hp += 150
  }
}

let acolyte = Hero(hp: 777)

acolyte.firstAid()          // hp = 787
acolyte.heal(hero: acolyte) // hp = 937
//: ### Домашнее задание
//: Создайте пару протоколов по примеру.

//: [Вперёд](@next)
