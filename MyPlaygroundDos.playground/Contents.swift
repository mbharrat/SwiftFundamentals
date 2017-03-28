//: Playground - noun: a place where people can play

import UIKit



var animals: [String] = ["Cow", "Dog", "Bunny"]

var cuteness = ["Cow" : "not very cute",
                "Dog" : "Very cute",
                "Bunny": "Cute"]

let dogsCuteness = cuteness["Dog"]
cuteness["Cat"]

for animal in animals{
    cuteness[animal]
}

