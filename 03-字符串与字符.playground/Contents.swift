import UIKit


// 字符串字面量
let someString = "some string literal value"

// 多行字符串字面量
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""


// 初始化空字符串

var emtyString = ""
var anotherEmptyString = String()

if emtyString.isEmpty {
    print("kong")
}

// 字符串的可变性

var variableString = "horse"
variableString += "asndnands asdasd"

//let xonstantString = "dasdasd"
//xonstantString += "234rt"

// 字符串是值类型

for chasracter in "difff" {
    print(chasracter)
}

let exclamation: Character = "!"

// 连接字符串和字符

let string1 = "heool"
let string2 = " there "
var welcom = string1 + string2


var instri = "sdasdasd"
instri += string2

instri.append(string2)

// 字符串插值
let multipllier = 3
let message = "\(multipllier) time 2,5 is \(Double(multipllier) * 2.5)"

// 访问和修改字符串
let greeting = "Guten tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.index(greeting.startIndex, offsetBy: 7)]


for indec in greeting.indices {
    print("\(greeting[indec])")
}




// 插入和删除

var welcome = "helo"
welcom.insert("!", at: welcom.endIndex)
welcom.insert(contentsOf: "sdasdasd", at: welcom.endIndex)



welcom.remove(at: welcom.index(before: welcom.endIndex))

let rangge = welcom.index(welcom.endIndex, offsetBy: -6) ..< welcom.endIndex
welcom.removeSubrange(rangge)


// 子字符串

// 比较字符串

let sss = "abcde"
let ddd = "abcde"
if sss == ddd {
    print("qwertyuiop")
}


// 前缀和后缀相等
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var actiscencount = 0
for scene in romeoAndJuliet{
    if scene.hasPrefix("Act 1") {
        actiscencount += 1
    }
    if scene.hasSuffix("cell") {
        actiscencount -= 1
    }
}



