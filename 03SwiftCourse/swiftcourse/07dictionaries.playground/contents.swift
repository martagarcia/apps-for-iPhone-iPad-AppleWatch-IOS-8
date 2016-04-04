//: Playground - noun: a place where people can play

import UIKit

//dictionary

var daily_menu = [
    "starter" : "paella",
    "main_course" : "T-bone steak",
    "dessert" : "tiramisu",
    "drink" : "sangria"
]

println(daily_menu)

println(daily_menu["starter"])

//extract the value of optional

println(daily_menu["starter"]!)

daily_menu["drink"] = "lemon juice"

println(daily_menu["drink"]!)


// adding items

daily_menu["another_main_course"] = "fish and chips"

println(daily_menu["another_main_course"]!)

println(daily_menu)


// inmutable dictionary string int

let menu_prices = [
    "paella" : 8,
    "salad" : 5,
    "T-bone steak" : 14,
    "tiramisu" : 6,
    "sangria" : 6,
    "fish and chips" : 10,
    "lemon juice" : 5
]

// menu_prices["lemon juice"] = 6

var menu_prices_mutable = [
    "paella" : 8,
    "salad" : 5,
    "T-bone steak" : 14,
    "tiramisu" : 6,
    "sangria" : 6,
    "fish and chips" : 10,
    "lemon juice" : 5
]

menu_prices_mutable["lemon juice"] = 6

println(menu_prices_mutable["lemon juice"]!)

println(menu_prices_mutable)

println(menu_prices_mutable[daily_menu["drink"]!]!)

// empty mutable dictionary

var empty_menu = Dictionary<String,String>()

empty_menu["starter"] = "soup"

empty_menu["main_course"] = "salmon"

println(empty_menu)

// iteration

for (key,value) in menu_prices_mutable {
    println("menu_prices_mutable[\(key)] = \(value)")
}

//Array of Keys
var keys = Array(menu_prices_mutable.keys)

// Array of values
var values = Array(menu_prices_mutable.values)

println(keys)
println(values)
