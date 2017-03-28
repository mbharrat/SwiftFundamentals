//: Playground - noun: a place where people can play

import UIKit

//Bronze Challenge

/*
let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])

let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])

let check = myCities.isSupersetOf(yourCities)
*/

//Silver Challenge

//union example reworked
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]

let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
//let commonGroceryBag = groceryBag.union(friendsGroceryBag)
groceryBag.unionInPlace(friendsGroceryBag)
groceryBag.intersectInPlace(friendsGroceryBag)