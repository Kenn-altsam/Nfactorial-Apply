import Foundation

func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}

customAdd(
    20,
    30
) {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

customAdd( // this takes compiler longer to compile
    20,
    30
) {
    (lhs, rhs) in
    lhs + rhs
}

customAdd(
    20,
    30
) {
    $0 + $1
}

let ages = [30, 20, 19, 25]
ages.sorted(by: {( lhs: Int, rhs: Int) -> Bool in
    lhs > rhs
})

//func > (lhs: Int, rhs: Int) -> Bool { // this can be found in our ages.sorted(by: ...)
//                                      // function, which means we can substitute
//}                                     // everything in sorted(by:...) function with >

ages.sorted(by: >)
ages.sorted(by: <)



func customAdd2(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}


func add20To(_ value: Int) -> Int {
    value + 10
}

func add20To(_ value: Int) -> Int{
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

doAddition(
    on: 20
    using: add20To(_:)
)
