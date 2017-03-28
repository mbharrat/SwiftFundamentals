//: Playground - noun: a place where people can play

import Cocoa

var population: Int = 1000000000
var message: String
var hasPostOffice: Bool = true

if population < 10000{
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000{
        message = "\(population) is a medium town!"
} else if population >= 50000 && population < 100000{
    message = "\(population) is pretty big!"
}else{
    message = "\(population) is very large!"
}


/*message = population < 1000 ? "\(population) is a small town!" :
                    "\(population) is pretty big"
*/
print(message)

if !hasPostOffice{
    print("Where do we buy stamps?")
}
