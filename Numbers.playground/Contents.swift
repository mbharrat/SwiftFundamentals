//: Playground - noun: a place where people can play

import Cocoa

print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")
print("The maximum value for a 32-bit integer is \(Int32.max).")
print("The minimum value for a 32-bit integer is \(Int32.min).")

print("The maximum UInt value is \(UInt.max).")
print("The minimum UInt value is \(UInt.min).")
print("The maximum value for a 32-bit unsigned integer is \(UInt32.max).")
print("The minimum value for a 32-bit unsigned integer is \(UInt32.min).")

let numberOfPages: Int = 10 //declare the type explicitly
let numberOfChapters = 3 //also of type Int, but inferred by compiler

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

print(10 + 20)
print(30 - 5)
print(5 * 6)

print(10 + 2 * 5) //20 because of PEMDAS
print(30 - 5 - 5)//20 because of PEMDAS
print((10 + 2) * 5)//60
print(30 - (5 - 5))//30

print(11 / 3) //division of int is always another int, trunicates to 3
print(-11 / 3)//always rounds towards zero aka rounds down
print(11%3) //11/3 = 3 R 2 so prints 2
print(-11%3) // prints -2

//incrementation

var x = 10
x++
print("x has incremented to \(x)")
x--
print("x has decremented to \(x)")


x+=10
print("x has been added by 10 and is now \(x)")

let y: Int8 = 120
//let z = y + 10
//overflow operator
let z = y &+ 10
print("120 &+ 10 is \(z)")

let a: Int16 = 200
let b: Int8 = 50
//let c = a + b//uh oh
let c = a + Int16(b)

let d1 = 1.1 //implicit double
let d2: Double = 1.1
let f1: Float = 100.3

print(10.0 + 11.4)
print(11.0 / 3.0)
print(12.4 % 5.0)
if(d1 == d2){
    print("d1 and d2 are the same")
}
print("d1 + 0.1 is \(d1 + 0.1)")
if d1 + 0.1 == 1.2{
    print("d1 + 0.1 is equal to 1.2")
}

/*trouble ahead
let firstBadValue: UInt = -1
let secondBadValue: Int8 = 200
*/
