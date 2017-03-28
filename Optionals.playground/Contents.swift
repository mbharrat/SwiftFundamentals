//: Playground - noun: a place where people can play

import UIKit

let a = [Int()]


/*
class CarWithCups: NSString {
    var cupHolder: String
    required init(cupHolder: String) {
        self.cupHolder = cupHolder
        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*convenience init(){
        self.init(cupHolder: "Cool")
        
     */
    deinit{
    
    }
    }
}

let car = CarWithCups(cupHolder: "Cool")
//let newCar = CarWithCups();


//enumeration
enum TypesOfVeggies: String {
    case Carrots
    case Tomatoes
    case Celery
}

let carrot = TypesOfVeggies.Carrots
carrot.rawValue

func eatVeggies(veggie: String){
    
}
let randomVeggie = TypesOfVeggies(rawValue: "Carrots")





//semi colon means youre overriding
class SuperNumber: NSNumber {
    override func getValue(value: UnsafeMutablePointer<Void>) {
        super.getValue(value)
    }
}

//extensions
extension NSNumber {
    func superCoolGetter() -> Int{
        return 5
    }
}

let n = NSNumber(int: 4)
n.superCoolGetter()


//protocols: interface to a class
//DEFINE TYPE OF THING THAT CAN DANCE

protocol danceable {
    func dance()
}

class person: danceable{
    func dance(){
        
    }
}



var a = 3
var b = a
 b = 5
a
class number{
    var n: Int
    init(n: Int){
        self.n = n
    }
}

var aNumber = number(n: 3)
var bNumber = aNumber
bNumber.n = 5
aNumber.n

//properties
struct Animal {
    //2 stored properties
    var name: String = ""
    var heightInches = 0.0
    var heightCM: Double {
        get{
            return 2.54*heightInches
        }set (newHeightCM){
            heightInches = newHeightCM / 2.54
        }
    }
}
var dog = Animal (name: "dog" , heightInches: 50)
dog.heightInches
dog.heightCM
dog.heightCM=254


dog.heightInches


let noValue:Int? = nil
let unwrappedValue = noValue!


var str: String = "Hello, playground"
func performMagic(spell: String) -> String {
    return spell
}

//closure 

var newMagicFunction = {
    (spell: String) -> String in
    return spell;
}

newMagicFunction("disappear")
//why closure?




//could be nil OPTIONALS
var MaybeStr: String? = "hi"


//to unwrap optional must add ! TO UNWRAP
MaybeStr!.characters.count
*/