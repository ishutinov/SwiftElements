//: [Назад](@previous)
import Foundation
//: ## Switch
let nineTailFlee = 200

switch nineTailFlee {
case 200:
  print("Показатель уворота Девятихвостика - ровно 200")
case let flee where flee > 70:
  print("Уворот - больше 70")
default:
  print("Ни-ичего не понимаю")
}

// TODO: Falltrough and where expression

//: ### Домашнее задание

//: [Вперёд](@next)
