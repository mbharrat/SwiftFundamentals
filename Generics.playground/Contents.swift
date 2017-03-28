//: Playground - noun: a place where people can play

import UIKit
//underlying struct is an ARRAY
//element is generic keyword
//in struct use <Element>
struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(newItem: Element) {
        items.append(newItem)
    }
    mutating func pop() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
    
    func map<U>(f: (Element) -> U) -> Stack<U> {
        var mappedItems = [U]()
        for item in items {
            mappedItems.append(f(item))
        }
        return Stack<U>(items: mappedItems)
    }

}



//create instance of stack
//now must specify what will be in stack
var intStack = Stack<Int>()
intStack.push(newItem: 1)
intStack.push(newItem: 2)
var doubledStack = intStack.map(f: { 2 * $0 })

print(intStack.pop())
print(intStack.pop())
print(intStack.pop())

print(doubledStack.pop())
print(doubledStack.pop())

var stringStack = Stack<String>()
stringStack.push(newItem: "this is a string")
stringStack.push(newItem: "another string")

print(stringStack.pop())

func myMap<T,U>(items: [T], f: (T) -> (U)) -> [U] {
    var result = [U]()
    for item in items {
        result.append(f(item))
    }
    return result
}

let strings = ["one", "two", "three"]
let stringLengths = myMap(items: strings) { $0.characters.count }
print(stringLengths)

//type constraints

func checkIfEqual<T: Equatable>(first: T, _ second: T) -> Bool {
    return first == second
}

print(checkIfEqual(first: 1, 1))
print(checkIfEqual(first: "a string", "a string"))
print(checkIfEqual(first: "a string", "another string"))