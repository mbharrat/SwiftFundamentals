//: Playground - noun: a place where people can play

import UIKit



/*func perform(operation:String, on a:Double, and b:Double) -> Double{
    print("Performing", operation, "on", a, "and", b)
    var result: Double = 0
    switch operation{
        case "+": result = a + b
        case "-": result = a - b
        case "*": result = a * b
        case "/": result = a / b
    default: print("bad operation:", operation)
    }
    
    return result
}

perform("hello", on:1.0, and:2.0)

*/

var image = [
    [3, 7, 10],
    [6, 4, 2],
    [8, 5, 2]
]

func raiseLowerValuesOfImage(inout image: [[Int]]){
    for row in 0..<image.count{
        for col in 0..<image[row].count{
            image[row][col]
            if (image[row][col] < 5){
                image[row][col] = 5
            }
        }
    }
}

raiseLowerValuesOfImage(&image)
image

let array: [Int]()


