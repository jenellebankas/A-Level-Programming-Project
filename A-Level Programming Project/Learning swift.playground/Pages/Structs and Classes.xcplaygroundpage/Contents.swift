//: [Previous](@previous)

import UIKit

var greeting = "Hello, playground"

//: [Next](@next)


//STRUCTS
//can be given own variables, functions and constants that can be used however
//variables inside structs = properties

//had named property == stored property

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//instance
//they are variables so they can be changed
//var tennis = Sport(name: "Tennis")
//print(tennis.name)

//tennis.name = "Lawn tennis"

//Computer properties
//property that runs code to identify its property
//must always have type annotations and be created using var

//Property observes
//let code run before or after any propertry changes
//didSet: runs code every time amount changes
//willSet: used for before anything changes but is rarely used
//property observer must be assigned to a variable not a constant

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//Structs can have functions inside them called methods
//method belongs to struct so it is called when an instance of the struct is created
//most people put properties before methods in structs

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

//Mutating methods
//Struct constant thererfore all its properties are constant if instance created as a variable
//mututating keyword allows properties to be changed within a struct


struct Person2 {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
        print(name)
    }
}

var person = Person2(name: "Ed")
person.makeAnonymous()

//Properties and methods of strings
//to bring up string methods and properties library typr string.
//contains() is another useful method of swift

let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())



//Properties and methods of arrays
//also have contains method

var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")
toys.firstIndex(of: "Buzz")

print(toys.sorted())
toys.remove(at: 0)

//Initialisers
//special methods which provide different ways to create structs
//all structs come with memberwise intialisers which means that property must be given a value when struct is created
//all properties must have a value before initialiser ends 

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
        
    }
}

var user = User()
user.username = "twostraws"

print(user.username)

//Referring to the current instance
//self -> points to whatever instance of a struct is currently being used
//helps between distinction between property and parameter
//if it is self. it means that the property is being user

struct person1 {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var people = person1(name: "Jesus")

//Lazy properties
//for performance optimisation
//lazy keyword means that the struct will not be created until you first access it

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed1 = Person(name:"Ed")
ed1.familyTree

//Static properties and methods
//allows properties to be shared across all instances of the struct
//static methods work the sam ebutu you must wirte static func yourMethod()
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)


//Access control
//lets you restrict which code can use properties and methods and does this using private

struct People {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
}

let Ed = People(id: "12345")

//CLASSES

//differences between classes and structs:
//1. classses never come with a memberwise initialiser

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed:  "Poodle")

//Class Inheritance
//2. Can create a class based of an original class
//class it inherits from == parent class or super class and new class is called child class
//classes may inherit from only one parent

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//Overriding methods: child classes can replace parent methods
 
class Dogs {
    func makeNoise() {
        print("woof!")
    }
}

final class Poodles: Dogs {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppys = Poodles()

poppys.makeNoise()

//Final Classes
//disllows other developers from inheriting from the class
//use final keyword

//Copying objects
//3. classes and structs when copied act differently as with classes the copies affect eachother but with structs they are separate
//when struct is copy original and copy are different

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

//Deintializers
//4. code that runs when an instance of a class is destroyed

class Dead {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Dead()
    person.printGreeting()
}

//Mutability
//If we have a constant struct with a variable then it can't be chnaged whereas with a class it can be and if we want to prevent this, the property must be made constant


