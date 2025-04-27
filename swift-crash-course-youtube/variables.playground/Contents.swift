import Foundation

let my_name = "Kenzhe" // cannot be assigned to again
let your_name = "Kana"

var names = [
    my_name,
    your_name
]

names.append("Bar")
names.append("Baz")

let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"

let more_names = [
    "Foo",
    "Bar"
]

var copy = more_names
copy.append("Baz")
more_names
copy
