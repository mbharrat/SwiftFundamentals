//: Playground - noun: a place where people can play

import UIKit

//var bucketList: Array<String>
//or
//var bucketList: [String]
//this doesnt initialize

var bucketList = ["Climb Mt. Everest"]
//now uses type inference
/*bucketList.append("Fly hot air balloon to Fiji")
bucketList.append("Watch the Lord of the Rings trilogy in one day")
bucketList.append("Go on a walkabout")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow")
*/

var newItems = [ "Fly hot air baloon to Fiji", "Watch the Lord of the Rings trilogy in one day", "Go on a walkabout", "Scuba dive in the great Blue Hole", "Find a triple rainbow"]
/*for item in newItems{
    bucketList.append(item)
}*/

bucketList += newItems
bucketList

bucketList.removeAtIndex(2);
//bucketList
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan across Alaska", atIndex: 2)
bucketList
var myronsList = [ "Climb Mt. Kilimanjaro", "Fly hot air baloon to Fiji", "Toboggan across Alaska", "Go on a walkabout in Australia", "Scuba dive in the great Blue Hole", "Find a triple rainbow"]
let equal = (bucketList == myronsList)
