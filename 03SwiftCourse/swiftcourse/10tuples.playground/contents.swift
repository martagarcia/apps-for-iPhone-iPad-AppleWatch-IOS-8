//: Playground - noun: a place where people can play

import UIKit

// tuple

let a = (23,42)

let tuplestring = ("34.22","23.14")

// extract elements

var (latitude, longitude) = tuplestring

println(latitude)

println(longitude)

// extract only an element

var (latitude2,_) = tuplestring

println(latitude2)

// read elements

println()

println(tuplestring.0)

println(tuplestring.1)

// tuple with named elements

var tupleelementsnamed = ( name: "rick", weight: 88)

println(tupleelementsnamed.name)

println(tupleelementsnamed.weight)
