//: Playground - noun: a place where people can play

import UIKit

// range closed

let rangeofintegers = 1...10

println(rangeofintegers.startIndex)

println(rangeofintegers.endIndex)


// half open range

let halfopenrange = 1..<10

println(halfopenrange.startIndex)

println(halfopenrange.endIndex)


// iteration

println()

for element in rangeofintegers
{
    println(element)
}

println()

for element in halfopenrange
{
    println(element)
}