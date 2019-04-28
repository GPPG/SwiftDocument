import UIKit


// 属性

// 储存属性将常量和变量储存为实例的一部分,计算属性则直接计算值
// 计算属性用于类,结构体,枚举
// 储存属性用于类和结构体


// 存储属性

struct FixedLengthRange{
    var firstValue: Int
    let length: Int
}

var rangofThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangofThreeItems.firstValue = 6

// 这种行为是由于结构体属于值类型。当值类型的实例被声明为常量的时候，它的所有属性也就成了常量。
//let rangoeofFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangoeofFourItems.firstValue = 4

// 延时加载存储属性

/*
 延时加载存储属性是指当第一次被调用的时候才会计算其初始值的属性。在属性声明前使用 lazy 来标示一个延时加载存储属性。
 必须将延时加载属性声明成变量（使用 var 关键字），因为属性的初始值可能在实例构造完成之后才会得到。而常量属性在构造过程完成之前必须要有初始值，因此无法声明成延时加载。
 */



class DataImporter{
    
    var fileName = "date.txt"

}

class DataManager{
    lazy var importer = DataImporter()
    var data = [String]()
}

let manger = DataManager()
manger.data.append("asd")
manger.data.append("asddd")

print(manger.importer.fileName)

// 存储属性和实例变量
/*
除存储属性外，类、结构体和枚举可以定义计算属性。计算属性不直接存储值，而是提供一个 getter 和一个可选的 setter，来间接获取和设置其他属性或变量的值。
*/

struct Point{
    var x = 0.0
    var y = 0.0
}

struct Size{
    var width = 0.0
    var height = 0.0
}


struct Rect{
    var origin = Point()
    var size = Size()
    var center: Point{
        get{
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

// 简化setter声明
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

// 只读计算属性

struct Cuboid{
    
    var width = 0.0,height = 0.0,depth = 0.0
    var volume: Double{
        return width * height * depth
    }
}

// 属性观察器

/*
 willSet 在新的值被设置之前调用
 didSet 在新的值被设置之后调用
 */

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("将 totalSteps 的值设置为 \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("增加了 \(totalSteps - oldValue) 步")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// 将 totalSteps 的值设置为 200
// 增加了 200 步
stepCounter.totalSteps = 360
// 将 totalSteps 的值设置为 360
// 增加了 160 步
stepCounter.totalSteps = 896
// 将 totalSteps 的值设置为 896
// 增加了 536 步


// 全局变量和局部变量

// 计算属性和观察属性所描述的功能也可以用于全局变量和局部变量。全局变量是在函数、方法、闭包或任何类型之外定义的变量。局部变量是在函数、方法或闭包内部定义的变量。


// 类型属性























































































































