import UIKit


/*
协议
 */

struct SomeStructure{
    // 这里是结构体的定义部分
    var name = "sd"
    
}

// 属性
protocol SomeStructure1{
    
    var mustBeSettable: Int { get set }
    
    var doesNotNeedToBeSettable: Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}


protocol FullyName{
    var fullName: String{get}
}

struct Person: FullyName{
    var fullName : String
    
}

// 方法要求
protocol SomeProtocol{
    static func someTypeMethod()
}





// 异变方法要求

protocol Togglable{
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()

// 构造器要求
protocol SomeProtocol1{
    
    init(someParameter: Int)
    
}


class SomeClass: SomeProtocol1{
    
    required init(someParameter: Int) {
        
    }
    
}


// 协议作为类型


/*
 议可以像其他普通类型一样使用，使用场景如下：
 作为函数、方法或构造器中的参数类型或返回值类型
 作为常量、变量或属性的类型
 作为数组、字典或其他容器中的元素类型
 */


protocol RandomNumberGenerator{
    func random() -> Double
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

// 委托


protocol DiceGame{
    var dice: Dice { get }
    func play()
}

protocol DiceGameDelegate{
    func gameDidStart(_ game: DiceGame)
    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
    func gameDidEnd(_ game: DiceGame)
}

// 在扩展里添加协议遵循

protocol TextRepresenttable{
    
    var texttualDescription: String { get }
}

extension Dice: TextRepresenttable{
    
    var texttualDescription: String{
        
     return "asdasd"
    }
}


// 有条件的遵循协议








// 在扩展里声明采纳协议

struct Hamster {
    var name: String
    var textualDescription: String {
        return "A hamster named \(name)"
    }
}

// 协议类型的集合



// 协议的继承




// 类专属的协议

/*
 你通过添加 AnyObject 关键字到协议的继承列表，就可以限制协议只能被类类型采纳（以及非结构体或者非枚举的类型）。
 */



// 协议合成

protocol Named {
    var name: String { get }
}
protocol Aged {
    var age: Int { get }
}
struct Person1: Named, Aged {
    var name: String
    var age: Int
}
func wishHappyBirthday(to celebrator: Named & Aged) {
    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
}
let birthdayPerson = Person1(name: "Malcolm", age: 21)
wishHappyBirthday(to: birthdayPerson)

// 检查协议一致性

/*
 is 用来检查实例是否符合某个协议，若符合则返回 true，否则返回 false；
 as? 返回一个可选值，当实例符合某个协议时，返回类型为协议类型的可选值，否则返回 nil；
 as! 将实例强制向下转换到某个协议类型，如果强转失败，将触发运行时错误。
 */
















































































