//
//  UserAPI.swift
//  A-level Solar System Project
//
//  Created by Jenelle Bankas on 10/06/2022.
//

import Foundation

struct User {
    let userName: String
    var planets: Int?
    var planetsName: [String]?
    var coords: [(Double,Double)]?
}

//protocol to ensure user info is in correct format
protocol UserAPIable {
    func getUser(from userName: String) -> User
    func loadUserSettings( user: inout User )
    
}

//Struct inherits protocol properties and retrieves username info
struct UserAPISimple: UserAPIable {
    func getUser(from userName: String) -> User {
        return User(userName: userName)
    }
    
    func loadUserSettings(user: inout User) {
        user.planets = 3
    }
    
    
}
