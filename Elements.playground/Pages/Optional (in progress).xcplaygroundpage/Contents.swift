//: [Назад](@previous)
import Foundation
//: ## Optional (Опциональный тип)
//: Поскольку Swift - язык строгой типизации, в нём не может просто так встречаться пустое значение (nil).
//: Специально для таких случаев создан собоый тип объекта - Optional.
//: Optional (опционал) может иметь как своё значение, так и значение nil.

//: В случае с опционалом, он сразу имеет значение nil.
var santaPoringDefense: Int?
var nineTailDefense: Int

santaPoringDefense = nil
//: `nineTailDefense = nil` - выдаст ошибку: Nil cannot be assigned to type 'Int', поскольку неопциональный тип не может не иметь реального значения.

var sleeperFlee: [Int?] = [17, nil, 21, nil, 171]

sleeperFlee[1]

//: ### Домашнее задание
//: Опробуйте **Опционалы** в деле, дабы лучше усвоить их прицип действия.

//: [Вперёд](@next)
