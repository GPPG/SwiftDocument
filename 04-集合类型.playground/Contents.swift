import UIKit


// 集合
// Swift 语言提供 Arrays、Sets 和 Dictionaries 三种基本的集合类型用来存储集合数据。数组（Arrays）是有序数据的集。集合（Sets）是无序无重复数据的集。字典（Dictionaries）是无序的键值对的集。

// 数组

var someInts = [Int]()
print("\(someInts.count)")


someInts.append(1)

someInts = []


// 默认值的数组
var threeDoubles = Array(repeating: 1.0, count: 3)

var anotherA = Array(repeating: 2.2, count: 3)
var sixS = threeDoubles + anotherA

var shopplis = ["sd","dasd"]
if someInts.isEmpty {
    print("kong")
}else{
    print("cunzai")
}

shopplis += ["edfcv","bhji"]

shopplis.insert("sda", at: 1)

shopplis.remove(at: 0)

shopplis.removeLast()

// 数组的遍历

for item in shopplis {
    print(item)
}

for (idnex,value) in shopplis.enumerated() {
    print("\(String(idnex + 1))  \(value)")
    
}


// 集合

// 集合（Set）用来存储相同类型并且没有确定顺序的值。当集合元素顺序不重要时或者希望确保每个元素只出现一次时可以使用集合不是数组。


var letters = Set<Character>()

letters.insert("a")

var favori: Set = ["ser","sdad"]


// 集合操作

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]



// 集合成员关系和相等
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true

// 字典

var nameOfInteger = [Int: String]()

nameOfInteger[11] = "sdasd"


var airports: [String : String] = ["YYZ": "rererer","Dub": "dasda"]

airports.count


airports["asda"] = "wefgwef"

airports.updateValue("asda", forKey: "asda")
airports["asda"]

for airporcode in airports.keys {
    print("\(airporcode)")
}


