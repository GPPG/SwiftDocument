import UIKit



// 类和结构体



// 相同点
/*
定义属性用于存储值
定义方法用于提供功能
定义下标操作用于通过下标语法访问它们的值
定义构造器用于设置初始值
通过扩展以增加默认实现之外的功能
遵循协议以提供某种标准功能
*/

// 不同点(与结构体相比，类还有如下的附加功能)
/*
 继承允许一个类继承另一个类的特征
 类型转换允许在运行时检查和解释一个类实例的类型
 析构器允许一个类实例释放任何其所被分配的资源
 引用计数允许对一个类的多次引用
 */

// 类型定义的语法

struct SomeStructure{
    
    
    
}

class SomeClass{
    
    
}


struct Resolution{
    
    var width = 0
    var height = 0
    
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// 结构体和类的实例

let someResolution = Resolution()
let videoMode = VideoMode()


// 属性访问
print("tnasid \(someResolution.width)")
print("\(videoMode.resolution.width)")


videoMode.resolution.width = 12

// 结构体类型的成员逐一构造器

let vga = Resolution(width: 22, height: 344)


// 结构体和枚举是值类型

// 值类型是这样一种类型，当它被赋值给一个变量、常量或者被传递给一个函数的时候，其值会被拷贝。

let hed = Resolution(width: 33, height: 34)

var nnn = hed

nnn.width = 99


// 类是引用类型

let tet = VideoMode()

tet.resolution = hed
tet.interlaced = true
tet.name = "asdas"
tet.frameRate = 25.0


let also = tet
also.frameRate = 30.0

tet

// 恒等运算符
// 请注意，“相同”（用三个等号表示，===）与“等于”（用两个等号表示，==）的不同。“相同”表示两个类类型（class type）的常量或者变量引用同一个类实例。“等于”表示两个实例的值“相等”或“等价”，判定时要遵照设计者定义的评判标准。

// === 相等
// !== 不相等











































































