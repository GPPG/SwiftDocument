import UIKit


// 控制流

// For-in 循环
let names = ["1","2","3","4"]
for name in names  {
    print("\(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}

let minutea = 60
for tickMark in 0..<minutea {
    print("\(tickMark)")
}

let minusbeInterval = 5
for tickMark in stride(from: 0, through: minutea, by: minusbeInterval) {
    print("\(tickMark)")
}

// While 循环


//while condition {
//    statements
//}


// 条件语句

var temperatureIn = 33
if temperatureIn <= 32 {
    print("真的")
}else{
    print("假的")
}

// 不存在隐式的贯穿,不必写break
let someCharacter: Character = "A"
switch someCharacter {
case "a":
    print("the first lee")
case "z":
    print("the first lee")
case "A","d":
    print("asdasdasdasdasd")
default:
    print("asdasdasda")
}

// 区间匹配

let approx = 62
let countedd = "rtyhujklwefdwefwe"
let natural: String
switch approx {
case 0:
    natural = "no"
case 1..<5:
    natural = "3"
default:
    natural = "many"
}

// 元组

let somePoint = (1,0)
switch somePoint {
case (0,0):
    print("\(somePoint)原点")
case(_,0):
    print("\(somePoint)X轴")
case(0,_):
    print("\(somePoint)Y轴")
case(-2...2,-2...2):
    print("\(somePoint)盒子里面")
default:
    print("盒子外面")
}

// 值绑定

let anotherPoint = (1,3)
switch anotherPoint {
case (let x,0):
    print("\(x)X轴")
case(0,let y):
    print("\(y)Y轴")
case(let x,let y):
    print("\(x)--\(y)点点点")
}


// Where

// case 分支的模式可以使用 where 语句来判断额外的条件。


let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

// 复合型case

let someCharacter1: Character = "e"
switch someCharacter1 {
case "a", "e", "i", "o", "u":
    print("\(someCharacter1) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter1) is a consonant")
default:
    print("\(someCharacter1) is not a vowel or a consonant")
}

// 控制转移语句

// continue
// break
// fallthrough
// return
// throw


// continue


let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput {
    switch character {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOutput.append(character)
    }
}

// Break
// break 语句会立刻结束整个控制流的执行。break 可以在 switch 或循环语句中使用，用来提前结束 switch 或循环语句。

/*
循环语句中的 break
 
当在一个循环体中使用 break 时，会立刻中断该循环体的执行，然后跳转到表示循环体结束的大括号（}）后的第一行代码。不会再有本次循环的代码被执行，也不会再有下次的循环产生。

当在一个 switch 代码块中使用 break 时，会立即中断该 switch 代码块的执行，并且跳转到表示 switch 代码块结束的大括号（}）后的第一行代码。
*/

// 贯穿 Fallthrough

// fallthrough 关键字不会检查它下一个将会落入执行的 case 中的匹配条件。fallthrough 简单地使代码继续连接到下一个 case 中的代码，这和 C 语言标准中的 switch 语句特性是一样的。

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

// guard

// 像 if 语句一样，guard 的执行取决于一个表达式的布尔值。我们可以使用 guard 语句来要求条件必须为真时，以执行 guard 语句后的代码。不同于 if 语句，一个 guard 语句总是有一个 else 从句，如果条件不为真则执行 else 从句中的代码。

func greet(person:[String : String]){
    
    
    guard let name = person["name"] else {
        return
    }
    
    print("\(name)")
    
}

greet(person: ["name": "John"])



// 检测API可用性

if #available(iOS 10, macOS 10.12, *) {
    // 在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API
} else {
    // 使用先前版本的 iOS 和 macOS 的 API
}





































