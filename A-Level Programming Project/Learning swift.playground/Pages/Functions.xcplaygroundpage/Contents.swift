//: [Previous](@previous)

import UIKit


//: [Next](@next)

//FUNCTIONS AND STUFF

//Writing functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and Myapp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

//Accepting parameters
//Parsing swift is told what type is expected
//can make this return values
//if multiple values need to be returned then return a tuple

func square(number: Int) -> Int {
    return number * number
    //print(number * number)
}

let result = square(number: 8)

//Parameter labels
//Can use two names in functions
//internally parameter is called name but externally it is called to

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

//omitting parameter labels
//better to give external parameters names

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

//default functions
//put parameter equal in the calling of function for default

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet("Taylor")
greet("Taylor", nicely: false)

//Variadic functions
//Accept any number of parmeters of the same type
//use ... to signify mulitple parameters

print("Haters", "gonna", "hate")

func squares(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squares(numbers: 1, 2, 3, 4, 5, 6)

//Throwing functions
//made for when there is a bad input so allow errors to be thrown from function
//enum must be defined for errors that can be thrown and they are based off of swift errors

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

enum AgeError: Error {
    case underAge
    
}

//running throwing functions
//use do and catch key word
//do: start section that might case error
//try: every function that might casue errors
//catch: catches when error is thrown
//can have multiple catch blocks to handle individual errors but all possible error must be caught otherwise code will not build

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}

//inout parameters
//all parameters in swift are constants so they cannot be changed
//inout allows them to be  changed inside the function
//cannot use constants with inout
//& shows recognition that it is an inout parameters 

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)


