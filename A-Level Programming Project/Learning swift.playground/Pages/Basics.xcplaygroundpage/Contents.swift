//: Playground - noun: a place where people can play
//BASICS NEEDED

import UIKit

// These are different types of variables

var greeting = "Hello, playground"
var age = 38
var population = 8_000_000

// multi-line strings if multi-line strings are needed to format code neatly, end each line with \

var str1 = """
This goes
over multiple
lines
"""

//Doubles and Booleans, doubles store fractional values

var pi = 3.141
var awesome = true

//String interpolation

var score = 85
var str3 = "Your score was \(score)"
var results = "The test results are here: \(str3)"

//Constants, cannot be changed

let taylor = "swift"

// Type annotations, type inference: swift guesses type by how it was created

let str4 = "Hello, playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

//arrays, if type annotations are used, arrays are written in brackets

let john = "John Lennon"
let paul = "Paul Mcartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

//sets are like arrays but items are not stored in order or repeated
//if attempt made to input duplicate, it is ignored
// cannot index sets

let colors = Set(["red", "green", "blue"])

//tuples are immutable: nothing can change
//can be accessed using numerical indexing with a dot
//can index by name

var name = (first: "Taylor", last: "Swift")
name.0

//ARRAY, TUPLE, SET RULES
//if a group of unique items that are not duplicated but require specific position use tuple
//collection of values in no particular order are unique and need to quickly index/check if it is there use set
//if the order of items matter and there are duplicates then array should be used: MOST COMMON

//Dictionaries

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran" : 1.73
]
heights["Taylor Swift"]

//Dictionary default values
//if a key doesn't exist and is tried to be accessed nil is returned
//default values can be set to avoid this

let favouriteIceCream = [
    "Paul": "Chocolate",
    "Sophie" : "Vanilla"
]

favouriteIceCream["Paul"]
favouriteIceCream["Charlote", default: "unknown"]

//Empty collections
//arrays, set, dicitonaries are collection

var teams = [String: String] ()
teams["Paul"] = "Red"

var results2 = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results3 = Array<Int>()

//Enumerations

let result4 = "failure"
let result5 = "failed"
let result6 = "fail"

enum Result {
    case success
    case failure
}
let result7 = Result.failure

//Enum associated values
//let add additonal details

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

//enum raw values

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)

//Arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

//Operator overloading
//what an operator does depends what value you are using

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["Georger", "Ringo"]
let eatles = firstHalf + secondHalf

//Compound operators

var scores1 = 95
scores1 -= 5

var quote = "The rain in Spain falls mainly on the"
quote += "Spaniards"

//Comparison operators

let firstScoree = 6
let secondScoree = 4

firstScoree == secondScoree
firstScoree != secondScoree

"Taylor" <= "Swift"

//Condiitons

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces are lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("regular cards")
}

//Combining conditions

let age1 = 12
let age2 = 21

//&& means and
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

// || means or
if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

//The ternary operator
//three values at once, checks condition specified in first value, true returns second value, false returns third value

let firstCards = 11
let secondCards = 10
print(firstCard == secondCards ? "Cards are the same" : "Cards are different")

if firstCards == secondCards {
    print("Cards are the same")
} else {
    print("Cards are different")
}

//Switch statements
//several else if and if statments can be interchanged with this
//default is required to ensure all bases are covered if code is wanted to be continue past one case, use fallthrough

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//Range operators
//num..<num1 means open ranged num up to but not including num1
//... means closed ranged up to and including

let score3 = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did ok")
default:
    print("You did great")
}

