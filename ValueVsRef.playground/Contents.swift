//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += "! How are you today?"
str

class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}
//**************************************************************************
//when constant assigned to class, the anotherHectate gets referene of instance
//of GreekGod, so when anotherHectate changes, the actual GreekGod reference
//changes
//**************************************************************************
let hecate = GreekGod(name: "Hecate")
let anotherHectate = hecate

anotherHectate.name = "AnotherHectate"
anotherHectate.name
hecate.name
//**************************************************************************
struct Pantheon {
    let chiefGod: GreekGod
    let dateCreated = NSDate()
}

let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
zeus.name = "Zeus Jr."
zeus.name

pantheon.chiefGod.name //"AnotherHectate"
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name //????
greekPantheon.dateCreated
anotherHectate.name

let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "Jupitor"
gods
godsCopy
