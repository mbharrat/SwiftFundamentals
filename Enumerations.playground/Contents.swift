//: Playground - noun: a place where people can play

import UIKit
import Foundation
//import Cocoa

enum TextAlignment: Int {
    case Left = 20
    case Right = 30
    case Center = 40
    case Justify = 50
}

var alignment = TextAlignment.Left
print("Left has raw value \(TextAlignment.Left.rawValue)")
print("Right has raw value \(TextAlignment.Right.rawValue)")
print("Center has raw value \(TextAlignment.Center.rawValue)")
print("Justify has raw value \(TextAlignment.Justify.rawValue)")
print("The alignment has raw value \(alignment.rawValue)")


alignment = .Right

//create a raw value
let myRawValue = 100

//try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    //conversion succeeded
    print("successfully converted \(myRawValue) into a TextAlignment")
}else{
    //conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

/*
if alignment == .Right {
    print("we should right align the text!")
}
*/

switch alignment {
    case .Left:
        print("left aligned")
    
    case .Right:
        print("right aligned")
    
    case .Center:
        print("center aligned")
    case .Justify:
        print("justified")
   
}

//create enum with strings

enum ProgrammingLanguage: String {
    case Swift //= "Swift"
    case ObjectiveC = "Objective-C"
    case C //= "C"
    case Cpp = "C++"
    case Java //= "Java"
}

let myFavoriteLanguage = ProgrammingLanguage.Swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum Lightbulb {
    case On
    case Off
    
    func surfaceTemperatureForAmbientTemperature(ambient: Double) -> Double {
        switch self{
        case .On:
            return ambient + 150.0
        
        case .Off:
            return ambient
        }
    }
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
            
        case .Off:
            self = .On
        }
    }
}

var bulb = Lightbulb.On
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")


//Associated Values
enum ShapeDimensions {
    //Point has no associated value - it is dimensionless 
    case Point
    
    //square's associated value is the length of one side
    case Square(Double)
    
    //rectangle's associated value defines its width and height
    case Rectangle(width: Double, height: Double)
    
    //triangle of base and height
    case rightTriangle(base: Double, height: Double)
    
    func area() -> Double {
        switch self {
            case .Point:
                return 0
            
            case let .Square(side):
                return side * side
            
            case let .Rectangle(width: w, height: h):
                return w * h
            
            case let .rightTriangle(base: b, height: he):
                return b * he
        }
    }
    func perimeter() -> Double {
        switch self {
            case .Point:
                return 0
            case let .Square(side):
                return 4 * side
            case let .Rectangle(width: w, height: h):
                return (2 * w) + (2 * h)
            case let .rightTriangle(base: b, height: he):
                return (Math.pow(Math.pow(b, 2) + Math.pow(he, 2)),0.5) + b + he
            
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point

print("square's area = \(squareShape.area())")
print("rectagle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("square's perimeter = \(squareShape.perimeter())")
print("rectagle's perimeter = \(rectShape.perimeter())")
print("point's perimeter = \(pointShape.perimeter())")

//recursive enumerations

//indirect
enum FamilyTree {
    case NoKnownParents
    indirect case OneKnownParent(name: String, ancestors: FamilyTree)
    indirect case TwoKnownParent(fatherName: String, fatherAncestors: FamilyTree,
        motherName: String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.TwoKnownParent(fatherName: "Fred Sr.", fatherAncestors: .OneKnownParent(name: "Beth", ancestors: .NoKnownParents), motherName: "Marsha", motherAncestors: .NoKnownParents)

//Bronze challenge











