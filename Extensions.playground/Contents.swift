//: Playground - noun: a place where people can play

import UIKit

//typealias gives existing type another name
typealias Velocity = Double
extension Velocity {
    var kph: Velocity { return self * 1.60934 }
    var mph: Velocity { return self }
}

//add protocol conformance to a type with an extension (define interface for type)
protocol VehicleType {
    var topSpeed: Velocity { get }
    var numberOfDoors: Int { get }
    var hasFlatBed: Bool { get }
}

//extending your own type
struct Car {
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    var gasLevel: Double {      //mutable stored property w/ property observer
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0, "New Value must be between 0 and 1.")
        //willset observer called every time new value for gasLevel is set
        //precondition() ensures newValue is between desginated ranges
        }
    }
}
//each property given simple getter, for conven. return default values
extension Car: VehicleType {
    var topSpeed: Velocity { return 180 }
    var numberOfDoors: Int { return 4 }
    var hasFlatBed: Bool { return false }
}
//new extension adds initializer that accepts arguments only for specific instances
extension Car {
    init(carMake: String, carModel: String, carYear: Int) {
        self.init(make: carMake, model: carModel, year: carYear, color: "Black", nickname: "N/A", gasLevel: 1.0)
    }
}
//has your values as well as default values
var c = Car(carMake: "Ford", carModel: "Fusion", carYear: 2013)
