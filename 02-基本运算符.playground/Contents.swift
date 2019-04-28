
import UIKit


// 术语
/*
 一元运算符对单一操作对象操作（如 -a）。一元运算符分前置运算符和后置运算符，前置运算符需紧跟在操作对象之前（如 !b），后置运算符需紧跟在操作对象之后（如 c!）。
 二元运算符操作两个操作对象（如 2 + 3），是中置的，因为它们出现在两个操作对象之间。
 三元运算符操作三个操作对象，和 C 语言一样，Swift 只有一个三元运算符，就是三目运算符（a ? b : c）。
 */


// 赋值运算符
let b = 10
var a = 5
a = b

let (x,y) = (1,2)

//与 C 语言和 Objective-C 不同，Swift 的赋值操作并不返回任何值。所以下面语句是无效的：
//if x = y {
//
//}

// 算术运算符
1 + 2
"heeee" + "asdas"

// 求余运算符

9 % 4

-9 % 4

// 一元负号运算符
let three = 3
let minusThree = -three

// 组合赋值运算符
var e = 1
e += 2


// 比较运算符

// 每个比较运算都返回了一个标识表达式是否成立的布尔值：
1 == 1   // true, 因为 1 等于 1
2 != 1   // true, 因为 2 不等于 1
2 > 1    // true, 因为 2 大于 1
1 < 2    // true, 因为 1 小于2
1 >= 1   // true, 因为 1 大于等于 1
2 <= 1   // false, 因为 2 并不小于等于 1


(1,"a") < (2,"a")
// bool值的元祖不能比较,只能比较7个以内元素


// 三元运算符

let content = 40
let hasheader = true
var rowheight = content + (hasheader ? 50 : 30)

// 空合运算符

// 空合运算符（a ?? b）将对可选类型 a 进行空判断，如果 a 包含一个值就进行解包，否则就返回一个默认值 b。表达式 a 必须是 Optional 类型。默认值 b 的类型必须要和 a 存储值的类型保持一致。


let defu = "red"
var user: String?
var colo = user ?? defu


// 区间运算符

// 闭区间运算符（a...b）定义一个包含从 a 到 b（包括 a 和 b）的所有值的区间。a 的值不能超过 b。


for index in 1...5 {
    print("\(index)")
}


// 半区间运算符

// 半开区间运算符（a..<b）定义一个从 a 到 b 但不包括 b 的区间。 之所以称为半开区间，是因为该区间包含第一个值而不包括最后的值。

let names = ["1","2","3"]

let count = names.count
for i in 0..<count {
    print("\(names[i])")
}


// 单侧区间

for name in names[1...] {
    print(name)
}

for name in names[...2] {
    print(name)
}


for name in names[..<2] {
    print(name)
}


// 逻辑运算符

// 逻辑非
let allowEntry = false
if !allowEntry {
    print("asdasd")
}


// 逻辑与
let entert = true
let passs = false
if entert && passs {
    print("1111")
}else{
    print("2222")
}


// 逻辑或

let entert1 = true
let passs1 = false
if entert1 || passs1 {
    print("1111")
}else{
    print("2222")
}

















