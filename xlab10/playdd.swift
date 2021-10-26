import UIKit

//func swapNumbers(num1: inout Int,num2: inout Int) {
//    let temp = num1
//    num1 = num2
//    num2 = temp
//}
//func swap<T>(a: inout T,b: inout T) {
//    let temp = a
//    a = b
//    b = temp
//}
//
//var number1 = 10
//var number2 = 5
//swapNumbers(num1: &number1, num2: &number2)
//print(number1,number2)
//var str1 = "Hello"
//var str2 = "World"
//swap(a: &number1, b: &number2)
//swap(a: &str1, b: &str2)
//print(str1,str2)
//print(number1,number2)


// Optionals ?  -> value? or nil

// Type inference (without type)
var name:String?
print(name ?? <#default value#>)
name = "mahmoud"
print(name)
// force unwrapping (using !)
print("Force Unwraping UNSAFE!!!",name!)
//name = nil
//print(name)
// force unwrapping (using !)
//print(name!)

if name != nil {
    print("Safe: ",name!)
}


//Optional Binding (if let, guard let)

// 1
//name = nil
let className:String? = "Jazan"
if let myName = name, let myClass = className {
    print("Binding: ",myName,myClass)
}
// 2

guard let mySafeName = name else {
    //throwing an error
    fatalError("Something went wrong")
}
print(mySafeName)




struct Person {
    var name:String?
}
let person = Person()
// Optional Chaning ?.
print(person.name?.uppercased())
print(name?.lowercased())
if let personName = person.name {
    print(personName.uppercased())
    print(personName.lowercased())
    
}

// nil coalescing ??

print(person.name?.uppercased() ?? "")
let thePersonName = person.name ?? "Ahmad"
print(thePersonName.uppercased())

// casting  example

var num22 = "22"
print(Int(num22)!)
if let num22 = Int(num22) {
    print(num22)
}
