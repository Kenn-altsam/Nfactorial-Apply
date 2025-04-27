import Foundation

let my_age = 20
let your_age = 20

if my_age > your_age{
    "I'm older than you"
}
else if my_age < your_age{
    "I'm younger than you"
}
else{
    "Oh, hey, we're the same age!"
}


let my_mothers_age = my_age + 25
let double_my_age = my_age * 2

// 3 types of operators
// 1. unary prefix
let foo = !true
// 2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFixName = name!
type(of: unaryPostFixName)
// 3. binary infix
let result = 1 + 2



// ternary
let age = 18
let message = age >= 18 
    ? "You are an adult"
    : "You are not an adult yet"

//
//let message: String
//if age >= 18 {
//    "You are an adult"
//} else{
//    "You are not an adult yet"
//}
