//: [Назад](@previous)
import Foundation
var gryphonHP: Int  = 27800
let heroAtk: Int    = 5975
//: ## While (цикл)
//: **While** - цикл перебора наподобие For-in, действующий по принципу: "До тех пор, пока не..."
while gryphonHP > 0 && gryphonHP > heroAtk {
  gryphonHP -= heroAtk
  
  if gryphonHP > heroAtk {
    print("Грифон отхватил от героя, и у него осталось всего \(gryphonHP) жизней")
  } else {
    print("Убил x_X")
  }
  
  // Пауза на секунду
  sleep(1)
}

print("\n===========\n")
//: ## Repeat While (цикл)
//: Принцип цикла Repeat-While похож на обычный While за исключением того,
//: что проверка происходит уже после произведённого действия.
var poringHP    = 50
let poisonedAtk = 70

repeat {
  poringHP -= poisonedAtk
  print("Капля никотина разорвала Поринга на куски! Жизни поринга: \(poringHP)")
} while poringHP > 0

print("\n===========\n")
//: Как видите из примера - первое действие происходит даже тогда, когда не удовлетворяет условиям проверки, потому как сама проверка идёт уже после действия.

//: ## Continue
//: Помимо этого существуют ещё, так называемые, опараторы передачи управления.  
//: **Continue** прерывает текущую итерацию цикла в том месте, где он вызван, и переходит к следующей итерации.
let monstersInSphinxDungeon: [String: Int] = ["Anubis": 75, "Minorous": 52, "Pasana": 61, "Mimic": 51]

var sphinxIterator = monstersInSphinxDungeon.makeIterator()

while let inSphinxMonster = sphinxIterator.next() {
  if inSphinxMonster.value < 60 {
    print("Я готов одолеть \(inSphinxMonster.key) в честном бою!")
  } else {
    print("Обойду-ка я стороной этого \(inSphinxMonster.key)")
    continue
  }
}

print("\n===========\n")
//: ## Break
//: **Break** останавливает цикл и выходит из него в той итерации, где он вызван.
let monstersInNiflheim: [String: Int] = ["Lord of Death": 94, "Gibbet": 58, "Dullahan": 62, "Loli Ruri": 71, "Disguise": 55]

var niflheimIterator = monstersInNiflheim.makeIterator()

while let inNiflheimMonster = niflheimIterator.next() {
  if inNiflheimMonster.value < 90 {
    print("С этим \(inNiflheimMonster.key) я справлюсь наверняка!")
  } else {
    print("Ух ты ж! Вот встретить здесь \(inNiflheimMonster.key) я точно не ожидал. Пойду-ка я отсюда!")
    break
  }
}
//: ### Домашнее задание
//: Создайте несколько своих циклов для практики.

//: [Вперёд](@next)
