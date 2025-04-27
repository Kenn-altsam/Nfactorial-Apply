import Foundation

func noArgumentsAndNoReturnValues() {
    "I don't know what I'm doing"
}

noArgumentsAndNoReturnValues()

func plusTwo(value: Int) {
    let newValue = value + 2
}

plusTwo(value: 30)

func newPlusTwo(value: Int) -> Int {
    value + 2 // this is the same as return value + 2
}
newPlusTwo(value: 30)

func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    value1 + value2
}

let customAdded  = customAdd(
    value1: 10,
    value2: 20)


@discardableResult // if we don't use it in pure Swift -> we would've got the error, if we are don't use the variables that we assign values to
func myCustomAdd(
    _ lhs: Int,    // _ lhs means that we the variable is internal, meaning that we don't have to specify the variable when calling the function, just like in line 40
    _ rhs: Int
) -> Int {
    lhs + rhs
}

myCustomAdd(20, 10)

// Functions can have other functions inside of them

func doSomethingComplicated(
    with value: Int
) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}

doSomethingComplicated(with: 30) // 35

func getFullName(
    firstName: String = "Foo",
    lastName: String = "Bar"
) -> String {
    "\(firstName) \(lastName)"
}
getFullName()
getFullName(firstName: "Baz")
getFullName(lastName: "Foo")
getFullName(firstName: "Baz", lastName: "Bat")
