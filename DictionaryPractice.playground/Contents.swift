//: Playground - noun: a place where people can play

import UIKit
//have dictionary with key = county and value = an array
//in array is 5 zipcodes

var NewJersey = ["Monmouth": [07726, 08890, 09999, 88888, 22222], "Ocean": [11111,33333,44444,55555,66666], "Piscataway": [00000, 77777, 99999, 10101, 12121]]
let zips = Array(NewJersey.values.flatten())
print("New Jersey has the following zip codes: \(zips)")