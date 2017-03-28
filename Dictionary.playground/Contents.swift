//: Playground - noun: a place where people can play

import UIKit

var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(movieRatings.count) movies.")
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, currentRating = movieRatings["Donnie Darko"]{
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}
movieRatings["The Cabinet of Dr. Caligari"] = 5
//movieRatings.removeValueForKey("Dark City")
movieRatings["Dark City"] = nil
for (key, value) in movieRatings{
    print("The movie \(key) was rated \(value).")
}
for movie in movieRatings.keys{
    print("User has rated \(movie).")
}

//create immutable dictionary
let album = ["Diet Roast Beef": 268, "Dubba Dubs Stubs His Toe": 467, "Smokey's Carpet Cleaning Service": 187, "Track 4": 221]
let watchedMovies = Array(movieRatings.keys)