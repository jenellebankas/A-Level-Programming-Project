//: [Previous](@previous)

import Foundation


//: [Next](@next)

var array = [Int]()

for num in 1...100 {
    if num % 2 == 0 {
        array.append(num)
    }
}

print(array)

func join(str1: String, str2: String) -> String {
    return str1 + str2
}

print(join(str1: "car", str2: "pet"))
