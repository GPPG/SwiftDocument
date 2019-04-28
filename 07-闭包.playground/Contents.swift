import UIKit



// 闭包

/*
 闭包是自包含的函数代码块，可以在代码中被传递和使用。Swift 中的闭包与 C 和Objective-C中的代码块（blocks）以及其他一些编程语言中的匿名函数（Lambdas）比较相似。

 全局函数是一个有名字但不会捕获任何值的闭包
 嵌套函数是一个有名字并可以捕获其封闭函数域内值的闭包
 闭包表达式是一个利用轻量级语法所写的可以捕获其上下文中变量或常量值的匿名闭包
 
 Swift 的闭包表达式拥有简洁的风格，并鼓励在常见场景中进行语法优化，主要优化如下：
 利用上下文推断参数和返回值类型
 隐式返回单表达式闭包，即单表达式闭包可以省略 return 关键字
 参数名称缩写
 尾随闭包语法
 */



// 闭包表达式

// 排序方法
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1:String, _ s2: String) -> Bool{
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)



// 闭包表达式语法

/*
{ (parameters) -> return type in
    statements
}
*/

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// 根据上下文推断类型

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2})

// 单表达式闭包的隐式返回
reversedNames = names.sorted(by: {s1, s2 in s1 > s2})

// 参数名称缩写

/*
 Swift 自动为内联闭包提供了参数名称缩写功能，你可以直接通过 $0，$1，$2 来顺序调用闭包的参数，以此类推。
*/

reversedNames = names.sorted(by: {$0 > $1})


// 运算符方法

reversedNames = names.sorted(by: >)


// 尾随闭包

/*
 尾随闭包是一个书写在函数圆括号之后的闭包表达式，函数支持将其作为最后一个参数调用。在使用尾随闭包时，你不用写出它的参数标签：
  */


func someFunctionThatTakesAClosure(closure: () -> Void){
    print("来了.老弟")
    closure()
}

someFunctionThatTakesAClosure {
    
}

reversedNames = names.sorted(){$0 > $1}


reversedNames = names.sorted{$0 > $1}


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]


let strings = numbers.map { (number) -> String in
    
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

// 值捕获

/*
 闭包可以在其被定义的上下文中捕获常量或变量。即使定义这些常量和变量的原作用域已经不存在，闭包仍然可以在闭包函数体内引用和修改这些值。
 */

func makeIncreementter(forInCrement amount: Int) -> () -> Int{
    
    var runnningTotal = 0
    func incrrementter() -> Int{
        runnningTotal += amount
        return runnningTotal
    }
    return incrrementter
}
let incrementByTen = makeIncreementter(forInCrement: 10)

incrementByTen()

incrementByTen()

incrementByTen()


let incrementBySeven = makeIncreementter(forInCrement: 7)

incrementBySeven()

incrementByTen()


// 闭包是引用类型

let alsoo = incrementByTen
alsoo()


// 逃逸闭包

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
































