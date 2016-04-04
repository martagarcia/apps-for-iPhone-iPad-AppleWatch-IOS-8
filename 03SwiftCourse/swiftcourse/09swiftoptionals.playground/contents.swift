//: Playground - noun: a place where people can play

import UIKit

// optionals are used when a value may be absent

var stringoptional :String?

println("stringoptional = \(stringoptional) ")

stringoptional = "hola"

if stringoptional != nil {
    println(stringoptional)
}

// forced unwrapping

var stringopt2 : String? = "adios"

if stringopt2 != nil {
    println(stringopt2) // print opctiona is a String?
    println(stringopt2!) // optional value asociated is a String
}

// but problems

var stringopt3 : String?

if stringopt3 != nil {
    println(stringopt3) // print opctiona is a String?
    println(stringopt3!) // optional value asociated is a String
}

// but this is incorrect

//println(stringopt3!) // the error is here

// optional binding is the correct form to extract a value from an optional

var stringopt4 : String? = "Adios amigos"

if let stringnotopt = stringopt4 {
    println("stringnotopt = \(stringnotopt)")
    // stringnotopt is an String
}

var myimplicitOptional : String? = "Hello"

println(myimplicitOptional)