import UIKit

//var greeting:String = "Hello, playground"
//greeting = "I can write Swift"
//print(greeting)
//
//let myInt:Int = 5
//print(myInt)
//
//var myDouble:Double = 0.5
//print(myDouble)
//
//var myBool = true
//print(myBool)
//
//
func sayHello(message: String){
    print(message)
}

sayHello(message: "I can code functions!")

func doAdd(a: Int, b: Int) -> Int {
    var sum = a + a + b + b
    return sum
}
doAdd(a: 1, b: 1) // The function signatures in lines 27 and 33 are different, and that's what differs those two
func doAdd(_ a: Int, _ b: Int) -> Int { // firstName and secondName are the 'parameter labels'
    // _ is used when we don't use parameter names or labels in the function call
    var sum = a + b
    return sum
}
doAdd(1, 1)
let result = doAdd(15, 25)
print(result)
