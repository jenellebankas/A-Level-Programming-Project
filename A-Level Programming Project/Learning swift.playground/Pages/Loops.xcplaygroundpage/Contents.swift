//: [Previous](@previous)

import UIKit

//For loops

let count = 1...10

for number in count {
    print("Number is \(number)")
    
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna")

for _ in 1...5 {
    print("play")
}

//while loops

var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//Repeat loops
//Code inside loop always executed at least once as condition is checked after

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

//Exiting loops
//break used to exit the loop when certain condition is met

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
}
    
//Exiting multiple loops
//loop inside loop == nested loop
//giver outerloop  a label and give condition in inner loop and use break to break from both

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//Skipping items
//allows loop to stop and continue omitting results instead of completely stopping

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
}

//infinite loops
//common to use while loops for infinite loops
//use true for infinite loops

var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}

