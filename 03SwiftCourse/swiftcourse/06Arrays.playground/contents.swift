// Playground - noun: a place where people can play

import UIKit

// mutable Array of integers

var ArrayOfIntegers = [2,4,6,8]

ArrayOfIntegers.append(10)

// inmutable Array of strings

let StringArray = ["blue", "red", "green"]

// read individual elements

println(ArrayOfIntegers[2])

println(StringArray[0])

println(StringArray[1])

println(StringArray[2])

// iteration in Arrays

for element in StringArray{
    println()
    println(element)
}

for value in ArrayOfIntegers{
    println()
    println(value)
}

for (index,element) in enumerate(ArrayOfIntegers)
{
    println("ArrayOfIntegers[\(index)] = \(element)")
}

for (index,element) in enumerate(ArrayOfIntegers)
{
    println("StringArray[\(index)] = \(element)")
}

// concatenation

var conca = StringArray + ["yellow"]

println(conca)


// insert element

println(ArrayOfIntegers)

ArrayOfIntegers.insert(44, atIndex: 3)

println(ArrayOfIntegers)


// remove element

ArrayOfIntegers.removeAtIndex(4)

println(ArrayOfIntegers)

ArrayOfIntegers.removeLast()

println(ArrayOfIntegers)


// reverse

var ArrayOfIntegersreverse = ArrayOfIntegers.reverse()

println(ArrayOfIntegersreverse)


// sorting

ArrayOfIntegers.sort({$0>$1})

println(ArrayOfIntegers)

ArrayOfIntegers.sort({$0<$1})

println(ArrayOfIntegers)

conca.sort({$0<$1})

println(conca)

conca.sort({$1<$0})

println(conca)


// filter array

var arrayint = [1,2,3,4,5,6,7,8,9,10]

var arrayintfilter = arrayint.filter{$0 % 2 == 0}

println(arrayintfilter)


// map array

var arrayint2 = [1,2,3,4,5,6,7,8,9,10]


var cuadraticarray = arrayint2.map{$0*$0}

println(cuadraticarray)


var doublearray = arrayint2.map{$0*2}

println(doublearray)


var descriptionarray = arrayint2.map{"The element is \($0) "}

println(descriptionarray)


// reduce

var arrayint3 = [1,2,3,4,5]

var sum = arrayint3.reduce(0){$0+$1}

println(sum)

var product = arrayint3.reduce(0){$0*$1}

println(product)



