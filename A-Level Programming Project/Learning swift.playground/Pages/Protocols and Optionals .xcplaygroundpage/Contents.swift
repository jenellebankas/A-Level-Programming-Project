//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//PROTOCOLS
//way of describing what properties and methods something must have and tell swift which types must use the protocol -> conforming or adopting a protocol
//{ get set } makes read-write variables or just { get } to make read-only variables, using just { set } is not allowed

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayId(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

//Protocol Inheritance
//can inherit from multiple protocols at once before customization

protocol Payable {
    func calculateWages()
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTraining, HasVacation {}


//Extensions: allow methods to be added to existing types
//must use computed properties

extension Int {
    func squared() -> Int {
        return self * self
        
    }
}

let number =  8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

//Protocol extensions
//let you extend a protocol so all conforming types receive changes

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

//Protocol-oriented programming
//crafting code around protocols and protocol extensions

protocol Identifiables {
    var id: String { get set }
    func identify()
    
}

extension Identifiables {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Users: Identifiables {
    var id: String
}

let twostraws = Users(id: "twostraws")
twostraws.identify()

//OPTIONALS

//Handling missing data
//If you didn't know a value you can use an alternative called nil
//to make type optional add question mark

var age: Int? = nil
age = 38

//Unwrapping optionals
//looking inside optionals to see what is inside by using if let synatx

var name: String? = nil

if let unwrapped = name {
    
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

//unwrapping with guard
//also unwraps but if it finds nil it expects you to exit the loop, function or condition and the unused optional stays and can be used after
//guard must be followed by else

func greet(_name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        
        return
    }
    
    print("Hello, \(unwrapped)!")
}

//Force unwrapping
//if value is known to not be nil
//force unwrap only when it is known to be safe

let str = "5"
let num = Int(str)!

//Implicitly unwrapped optionals
//might contain a value or might be nil but do not need to be unwrapped to be used
//can be used without if let or guard let but crash if they are attempted to be used without a value


let Age: Int! = nil

//Nil coalescing
//unwraps an optional and returns the value insisde if there is one
//if there is no vale then a default value is used

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

//Optional chaining
//if you want to access a.b.c to if b is optional then put a question mark so that it can be used
//there is a shortcut for optionals and this is shown below:

let Names = ["John", "Paul", "George", "Ringo"]
let beatle = Names.first?.uppercased()

//Optional try

//code from earlier
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}


//changes throwing functions into functions that return an optional
//if the function returns an error then nil will be thrown otherwise return value will be returned as an optional
if let result = try? checkPassword("password") {
    print("Reuslt was \(result)")
} else {
    print("D'oh.")
}

//used when you know an opitonal will not fail
//if the function does throw an error then the code will fail
try! checkPassword("sekrit")
print("OK!")

//Failable initializers
//an intializer that might work or might not work
//return value will be optional of type of your choosing

struct Person {
    var id: String
    
    init?(id:String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

//Typecasting
//typecast means that swift checks if each instance is the same type then it uses the same method 

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
