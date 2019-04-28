import UIKit


// 实例方法

class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}


// self 属性

/*
 
 实际上，你不必在你的代码里面经常写 self。不论何时，只要在一个方法中使用一个已知的属性或者方法名称，如果你没有明确地写 self，Swift 假定你是指当前实例的属性或者方法。这种假定在上面的 Counter 中已经示范了：Counter 中的三个实例方法中都使用的是 count（而不是 self.count）。
 */



// 在实例方法中修改值类型

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
// 打印“The point is now at (3.0, 4.0)”


// 在可变方法中给self 赋值

struct Point1 {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point1(x: x + deltaX, y: y + deltaY)
    }
}

// 类型方法


class SomeClass {
    class func someTypeMethod() {
        // 在这里实现类型方法
    }
}
SomeClass.someTypeMethod()
























































































































