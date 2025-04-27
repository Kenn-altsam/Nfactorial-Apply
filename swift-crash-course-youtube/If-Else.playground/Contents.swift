import Foundation

let myAge = 20
let myName = "Vandad"
let yourName = "Foo"
let yourAge = 19

if myName == "vandad" {
    "Your name is \(myName)"
} else {
    "Oops, I guessed it incorrectly"
}

if myName == "Vandad"{
    "I spelled it correctly!"
} else if myName == "Foo" {
    "Are you foo?"
} else {
    "Okay, I give up"
}

//if "Vandad" == myName {
//    "An uncommon way to write an if statement"
//}



if myName == "Vandad" && myAge == 30 {
    "Name is Vandad and you're 30"
} else if myAge == 20 {
    "You only guessed the age correctly"
} else {
    "I don't know what I'm doing"
}



if myAge == 20 || myName == "Foo" {
    "Either age is 20, name is Foo or both"
}
// Swift does read the myAge part and executes code block inside the if statement. It doesn't go the myName part



if myName == "Vandad"
    && myAge == 22
    && yourName == "Foo"
    || yourAge == 19 {
    "My name is Vandad and my age is 22 and your name is Foo...or...your age is 19"
}

if (myName == "Vandad"
    && myAge == 22)
    || 
    (yourName == "Foo"
    || yourAge == 19) {
    "My name is Vandad and my age is 22 and your name is Foo...or...your age is 19"
} else {
    "Hmm, that didn't work so well... "
}
