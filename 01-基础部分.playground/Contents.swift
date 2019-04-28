import UIKit

// 常量和变量
let maximumNumberOfLoginAttempts = 10

var currentLoginAttempt = 0

var x = 0.0, y = 1, z = 9

// 类型标注
var welcomeMessage: String

var red, green, blue: Double


// 整数
//Int
//UInt


// 浮点数
/*
Double 表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型。
Float 表示32位浮点数。精度要求不高的话可以使用此类型。
 */



// 类型安全 类型推断

/*
Swift 是一个类型安全（type safe）的语言。类型安全的语言可以让你清楚地知道代码要处理的值的类型。如果你的代码需要一个 String，你绝对不可能不小心传进去一个 Int。
如果你没有显式指定类型，Swift 会使用类型推断（type inference）来选择合适的类型。有了类型推断，编译器可以在编译代码的时候自动推断出表达式的类型。原理很简单，只要检查你赋的值即可。
*/


// 整数转换

// 整数和浮点数的转换必须显式指定类型

let three = 3
let pointOneFourOneFiveNine = 0.123123
let pi = Double(three) + pointOneFourOneFiveNine
let intPi = Int(pointOneFourOneFiveNine)


// 类型别名

typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min

// 布尔值

let yy = true
let nn = false

if yy {
    print("YES")
}else{
    print("NO")
}

let i = 1
if i == 1 {
    print("111")
}


// 元祖
// 元组（tuples）把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型。

let http404Error = (404,"Not Found")
let (statusCode, statusMessage) = http404Error
print("\(statusCode)")
print("\(statusMessage)")

let (justCode,_) = http404Error
print("\(justCode)")

print("\(http404Error.0)")
print("\(http404Error.1)")

let http200 = (sta: 200,des: "OK")
print(http200.des)
print(http200.sta)


// 可选类型

// Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中，nil 是一个指向不存在对象的指针。在 Swift 中，nil 不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设置为 nil，不只是对象类型。

var surveyAnswer: String?

let possible = "123"
let converted = Int(possible)

if converted != nil {
    print("conver 存在")
}

if converted != nil {
    print("粗正在 \(converted!)")
}


// 可选绑定

// 使用可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在 if 和 while 语句中，这条语句不仅可以用来判断可选类型中是否有值，同时可以将可选类型中的值赋给一个常量或者变量


if let acc = Int(possible) {
    print("\(acc)-----\(possible)")
}



// 隐式解析可选类型


let ppp: String? = "ansdnansdnandnand"
let fff: String = ppp!

let aaa: String! = "asdasdad"
let iii: String = aaa

// 错误处理

func canError() throws{
    
    
}


do {
    try canError()
    
} catch {
    
}




// 断言和先决条件

// 断言和先决条件是在运行时所做的检查。你可以用他们来检查在执行后续代码之前是否一个必要的条件已经被满足了。如果断言或者先决条件中的布尔条件评估的结果为 true（真），则代码像往常一样继续执行。如果布尔条件评估结果为 false（假），程序的当前状态是无效的，则代码执行结束，应用程序中止。
let age = -3



// 当一个条件可能为假，但是继续执行代码要求条件必须为真的时候，需要使用先决条件。例如使用先决条件来检查是否下标越界，或者来检查是否将一个正确的参数传给函数。
//precondition(index > 0, "Index must be greater than zero.")


