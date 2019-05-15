import UIKit


// 构造过程
/*
 构造过程是使用类、结构体或枚举类型的实例之前的准备过程。在新实例使用前有个过程是必须的，它包括设置实例中每个存储属性的初始值和执行其他必须的设置或构造过程
 */


// 存储属性的初始赋值


struct Fathrenheit{

    var temperature: Double
    
    init() {
        temperature = 25.0
    }
}

var f = Fathrenheit()

print("The default temperature is \(f.temperature)° Fahrenheit")


// 默认属性值

struct Fa{
    var temper = 23.0
    
}

// 自定义构造过程

struct Celsius{
    var temper: Double
    
    init(fromFa fahren: Double) {
        temper = (fahren - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temper = kelvin - 273.17
    }
}

var bol = Celsius(fromFa: 11.0)

// 形参命名和实参标签

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)


// 不带实参标签的构造器形参


struct Celsius1 {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double){
        temperatureInCelsius = celsius
    }
}

let bodyTemperature = Celsius1(37.0)


// 可选属性类型


class SurveyQ{
    
    var text: String
    var rep: String?
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        print(text)
    }
}

let ss = SurveyQ(text: "sdasd")
ss.ask()

ss.rep = "yes"



// 构造过程中常量属性的赋值


class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
// 打印“How about beets?”
beetsQuestion.response = "I also like beets. (But not with cheese.)"


// 默认构造器

class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()


// 结构体的逐一成员构造器

struct Size1 {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size1(width: 2.0, height: 2.0)


// 值类型的构造器代理

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

// 类的继承和构造过程

/*
 类里面的所有存储型属性——包括所有继承自父类的属性——都必须在构造过程中设置初始值。
 Swift 为类类型提供了两种构造器来确保实例中所有存储型属性都能获得初始值，它们被称为指定构造器和便利构造器。
 */

// 指定构造器和便利构造器

/*
 规则 1
         指定构造器必须调用其直接父类的的指定构造器。
 规则 2
         便利构造器必须调用同类中定义的其它构造器。
 规则 3
         便利构造器最后必须调用指定构造器。
 一个更方便记忆的方法是：
 指定构造器必须总是向上代理
 便利构造器必须总是横向代理
 */


// 两段式构造过程

/*
 Swift 中类的构造过程包含两个阶段。第一个阶段，类中的每个存储型属性赋一个初始值。当每个存储型属性的初始值被赋值后，第二阶段开始，它给每个类一次机会，在新实例准备使用之前进一步自定义它们的存储型属性。
 */




// 构造器的继承和重写

/*
 跟 Objective-C 中的子类不同，Swift 中的子类默认情况下不会继承父类的构造器。Swift 的这种机制可以防止一个父类的简单构造器被一个更精细的子类继承，而在用来创建子类时的新实例时没有完全或错误被初始化。
 */



// 构造器的自动继承

/*
则 1
    如果子类没有定义任何指定构造器，它将自动继承父类所有的指定构造器。
规则 2
    如果子类提供了所有父类指定构造器的实现——无论是通过规则 1 继承过来的，还是提供了自定义实现——它将自动继承父类所有的便利构造器。
*/



class Food{
    var name: String
    init(name: String) {
        self.name = name
    }
    
    convenience init(){
        self.init(name: "asidmadmo")
    }
    
}

let nameMeat = Food(name: "wedf")



class Recip: Food{
    var quantity: Int
    init(name: String, qu: Int) {
        self.quantity = qu
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, qu: 1)
    }
}

// 可失败构造器

/*
 时，定义一个构造器可失败的类，结构体或者枚举是很有用的。这里所指的“失败” 指的是，如给构造器传入无效的形参，或缺少某种所需的外部资源，又或是不满足某种必要的条件等。
 为了妥善处理这种构造过程中可能会失败的情况。你可以在一个类，结构体或是枚举类型的定义中，添加一个或多个可失败构造器。其语法为在 init 关键字后面添加问号（init?）
 */

struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty {
            return nil
        }
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe")
// someCreature 的类型是 Animal? 而不是 Animal

if let giraffe = someCreature {
    print("An animal was initialized with a species of \(giraffe.species)")
}
// 打印“An animal was initialized with a species of Giraffe”

























































































































