// Playground - noun: a place where people can play

var str = "Hello, playground"

let date = " Decembre 22, 2014"

let girlfriend = "Inma"

// insert variables or constants in strings

var yousay = "today is \(date), \(girlfriend)"

yousay = "Loving you, \(girlfriend)"

// concatenate strings

let concate = "today is" + date + ", " + girlfriend

// iteration over string

for char in concate{
    println(char)
}

for char in concate {
    print(char)
}

if yousay == "Loving you, Inma"{
    println()
    println("Ok, baby")
}
else {
    println()
    println("Oh no!, baby")
}

let s = "Jaca es una bonita ciudad"

println(s.isEmpty)

println(s.uppercaseString)

println(s.lowercaseString)

println(s.hasPrefix("jaca"))

println(s.hasPrefix("Jaca"))

println(s.hasSuffix("ciudad"))

