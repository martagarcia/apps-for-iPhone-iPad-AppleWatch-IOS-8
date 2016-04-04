//: Playground - noun: a place where people can play

import UIKit

// definition

enum monthspanish {case enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre, diciembre}

enum estaciones {case primavera, verano, otoño, invierno}

// asigning a enumeration value

var mes_enumvalue = monthspanish.diciembre

var estaciones_enumvalue = estaciones.primavera

// reasign value (type is inferred)

estaciones_enumvalue = .otoño

estaciones_enumvalue = .primavera

mes_enumvalue = .marzo

// selecting action with switch

switch mes_enumvalue {
case .enero:
    println("estamos en enero")
    
case .febrero:
    println("estamos en febrero, hace más frio")
    
default:
    println("no estamos ni en enero ni en febrero")
}

// raw value

enum day: Int{case lunes, martes, miercoles, jueves, viernes, sabado, domingo}

var firstday = day.lunes

println("first day value raw is  \(firstday.rawValue)")

var secondday = day.martes

println("second day value raw is  \(secondday.rawValue)")

enum day2: Int{case lunes = 5, martes, miercoles, jueves, viernes, sabado, domingo}

var firstday2 = day2.lunes

println("first day 2 value raw is  \(firstday2.rawValue)")

var secondday2 = day2.martes

println("second day 2 value raw is  \(secondday2.rawValue)")


// enumeration with function

enum daywithdescription : Int {
    case lunes = 1, martes, miercoles, jueves, viernes, sabado, domingo
    
    func description() ->String{
        switch self{
        case .lunes:
            return "lunes is the first day of the week"
        case .martes:
            return "martes is the second day of the week"
        case .miercoles:
            return "miercoles is the third day of the week"
        default:
            return "no se en qué día estamos"
        }
    }
}

var daywdescription = daywithdescription.martes

// description is a string value

var description = daywdescription.description()

println()
println(description)

// get a enumeration value from its raw value

var dayyy = daywithdescription(rawValue: 5)

var description2 = dayyy?.description()

var dayyyy = daywithdescription(rawValue: 2)

var description3 = dayyy?.description()




