//: Playground - noun: a place where people can play

import UIKit
/*
func printGreeting(){
    print("Hello, playground.")
}
printGreeting()

/*func printPersonalGreeting(name: String){
    print("Hello \(name), welcome to your playground")
}
*/
func printPersonalGreeting(names: String...){
    for names in names{
        print("Hello \(names), welcome to the playground")
    }
}

printPersonalGreeting("Michael", "Devina", "Jennifer", "Saleema")
/*func divisionDescription(forNumerator num: Double, andDenominator den: Double){
    print("\(num) divided by \(den) equals \(num / den)")
}

divisionDescription(forNumerator: 9.0, andDenominator: 3.0)
*/

func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = "."){
    print("\(num) divided by \(den) equals \(num / den)\(punctuation)")
}
divisionDescription(forNumerator: 9.0, andDenominator: 3.0)
divisionDescription(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!")
*/

func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(num) divided by \(den) equals \(num / den)\(punctuation)"
}

print(divisionDescription(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!"))


//Nested functions

func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double{
    let numerator = base * height
    func divide() -> Double{
        return numerator / 2
    }
    return divide()
}
areaOfTriangle(withBase: 3.0, andHeight: 5.0)

func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers{
        if number % 2 == 0{
            evens.append(number)
        }else{
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortedNumbers = sortEvenOdd(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")


func grabMiddleName(name: (String, String?, String)) -> String?{
    return name.1
}
let middleName = grabMiddleName(("Matt", "Devina", "Mathias"))
if let theName = middleName{
    print(theName)
}

func greetByMiddleName(name: (first: String, middle: String?, last: String)){
    guard let middleName = name.middle where middleName.characters.count < 4
    else{
        print("hey there!")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(("Matt", "michael","Mathias"))

func beanSifter(groceryList: [String]) -> (beans: [String], otherGroceries: [String]){
    var beans = [String]()
    var otherGroceries: [String] = []
    for item in groceryList{
        if item.hasSuffix("beans"){
            beans.append(item)
        }else{
            otherGroceries.append(item)
        }
    }
    return (beans,otherGroceries)
}
let groceryList: [String] = ["green beans", "milk", "black beans", "pinto beans", "apples"]
var result: (beans: [String], otherGroceries: [String])
result = beanSifter(groceryList);
result.beans
result.otherGroceries







