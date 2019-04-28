import UIKit

// 函数的定义和调用
func greet(person: String) ->String{
    let greetStr = "hello, " + person
    
    return greetStr
}


greet(person: "GP")


// 函数的参数与返回值

// 无参数函数
func sayHellowoela() -> String{
    return "he;;o, World"
}
sayHellowoela()

// 多参数函数
func greet(person:String, alreadyGreeted: Bool) -> String{
    
    if alreadyGreeted {
        return sayHellowoela()
    }else{
        return sayHellowoela() + "123"
    }
}

greet(person: "DD", alreadyGreeted: true)



// 无返回值函数

func greet1(person: String){
    print(person + "无返回值")
}
greet1(person: "DD")


// 多重返回值函数

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

minMax(array: [12,3,4,199])


// 可选元组返回类型
// 可选元组类型如 (Int, Int)? 与元组包含可选类型如 (Int?, Int?) 是不同的。可选的元组类型，整个元组是可选的，而不只是元组中的每个元素值。


// 函数参数标签和参数名称

/*
每个函数参数都有一个参数标签（argument label）以及一个参数名称（parameter name）。参数标签在调用函数的时候使用；调用的时候需要将函数的参数标签写在对应的参数前面。参数名称在函数的实现中使用。默认情况下，函数参数使用参数名称来作为它们的参数标签。
*/

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
}
someFunction(firstParameterName: 1, secondParameterName: 2)

// 指定参数标签

func someFunc(argumentLabel paramem: Int){
    
    
}

someFunc(argumentLabel: 1)

// 忽略参数标签
func someFunccc(_ firsfaf: Int, twosdad: Int){
    
    
}

someFunccc(1, twosdad: 2)

// 默认参数值

func someFunction(pp: Int,ppp:Int = 12){
    print(ppp)
}

someFunction(pp: 1)


// 可变参数

func arithmeticMean(_ numbers: Double...) ->Double{
    
    
    var totall = 0.0
    for number in numbers {
        totall += number
    }
    return totall / Double(numbers.count)
}

arithmeticMean(1,3,4,5,6)


// 输入输出参数

func swapTwoInts(_ a: inout Int, _ b: inout Int){
    a = 100
}

var someInt = 3
var anotherInt = 107

swapTwoInts(&someInt, &anotherInt)


print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


// 函数类型

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

//(Int, Int) -> Int

func printHelloWorld() {
    print("hello, world")
}
//() -> Void

// 使用函数类型
var mathFunction: (Int, Int) -> Int = addTwoInts


// 函数类型作为参数类型

func printMathResult(_ mathFunction:(Int, Int) -> Int,_ a: Int, _ b: Int){

    print("\(mathFunction(a,b))")
    
}

printMathResult(mathFunction, 1, 2)


// 函数类型作为返回类型

func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int{
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero 现在指向 stepBackward() 函数。


// 嵌套函数

/*
到目前为止本章中你所见到的所有函数都叫全局函数（global functions），它们定义在全局域中。你也可以把函数定义在别的函数体中，称作 嵌套函数（nested functions）。
默认情况下，嵌套函数是对外界不可见的，但是可以被它们的外围函数（enclosing function）调用。一个外围函数也可以返回它的某一个嵌套函数，使得这个函数可以在其他域中被使用
*/

//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    func stepForward(input: Int) -> Int { return input + 1 }
//    func stepBackward(input: Int) -> Int { return input - 1 }
//    return backward ? stepBackward : stepForward
//}


