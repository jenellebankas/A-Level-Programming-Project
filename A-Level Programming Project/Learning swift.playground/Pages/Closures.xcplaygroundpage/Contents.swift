//: [Previous](@previous)

import Foundation


//: [Next](@next)

//CLOSURES
//creating function and assign to variable and can be called using variable and parsed into other functions
//must have only one line when being called

//let driving = {
  //  print("I'm driving in my car")
//}

//driving()

//accepting parameters in a closure
//when closures are created they do not have a name or space for accepting parameters but can accept them in a certain way
//list parameters inside parentheses just inside opening brace, then write in

//let driving = { (place:String) in
    //print("I'm going to \(place) in my car")
//}

//driving("London")

//returning values from closures before in


//let drivingWithReturn = {(place: String) -> String
  //  in
    //return "I'm going to \(place) in my car"
//}

//let message = drivingWithReturn("London")
//print(message)

//Closures as parameters
//special syntax to look out for and remember

//let driving = {
  //  print("I'm driving in my car")
//}

//func travel(action: () -> Void) {
  //  print("I'm getting ready to go.")
    //action()
    //print("I arrived!")
//}

//travel(action: driving)

//Trailing closure syntax
//if last parameter to function == closure use trailing closure syntax

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel {
    print("I'm driving in my car")
}

//Using closures as parameters when they accept parameters

func travel1(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel1 { (place: String) in
    print("I'm going to \(place) in my car")
}

//Using closures with return values

func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//Shorthand parameter names
//you can remove certain words which are already known
//the closure above of travel2 can then be called with:
//$0 means that swift assigns automatic name counnting from 0 upwards


travel2 {
    "I'm going to \($0) in my car"
}

//Closures with multiple parameters

func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel3 {
    "I'm going to \($0) at \($1) miles per hour"
}

//Returning closures from functions
//1st arrow represents function return and second arrow represents closures return value


func travel4() -> (String) -> Void {
    var counter = 1
    return {
        print(" \(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel4()
result("London")
result("London")
//Capturing values
//if external values used inside closure they can be used as swift captures value in closure even if it doesn't exist anymore

