//: Playground - noun: a place where people can play

import UIKit

// basic function: dont return value

func sayhello(name : String){
    println("Hello \(name)")
}

sayhello("David")

sayhello("Peter")

func mult (x:Int, y:Int) -> Int{
    return x*y
}

// calling function

var a = mult(5, 4)

func sum (x:Int, y:Int) -> Int{
    return x+y
}

var b = sum(20, 40)

// function return multiple values

func sumandmult(x:Int,y:Int) ->(Int,Int){
    return (x+y,x*y)
}

// calling function

var (summ, product) = sumandmult(5, 30)

println("sum = \(summ), product = \(product)")

var (summ2, product2) = sumandmult(3, 20)

// function with named parameters

func truncat (s:String, lenght long:Int) -> String{
    return (s as NSString).substringFromIndex(long)
}

var stringtruncate = truncat("Hello David Prince", lenght: 14)

func truncat2(s:String, #lenght:Int) -> String {
    return (s as NSString).substringFromIndex(lenght)
}

var stringtruncate2 = truncat("Hello David Prince", lenght: 8)

// function with variable number of parameters

func suma(sumandos: Int...)->Int{
    
    var sum = 0
    
    for element in sumandos{
        sum += element
    }
    return sum
}

var result = suma(1,2,3,4,5,6,7)
