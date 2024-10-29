//
//  Classes and structures.swift
//  A-level Solar System Project
//
//  Created by Jenelle Bankas on 13/06/2022.
//

import Foundation

//Class for the planets and users can create the instances
class Planets {
    
    var planetName = " "
    
    
    let G = 6.67428e-11
    let AU = 1.49e6 * 1000
    let TIMESTEP = 3600 * 24
    
    var mass = 0.0
    var radius = 0.0
    var distanceFromsun = 0.0
    
    var x = 0.0
    var y = 0.0
    var z = 0.0
    
    var colour = ""
    var texture = ""
    
    //method to calculate planet's linear velocity
   
    func velocity(distanceFromsun:Double, mass:Double) -> Double{
        
        let planetVelocity = 0.0
        
        return planetVelocity
    }
    
    //method to calculate planet's attraction
    func attraction(distanceFromsun:Double, radius:Double, mass:Double)-> [Double]{
        
        let forceX = 0.0
        let forceY = 0.0
        
    
        
        return [forceX, forceY]
        
    }
    
    //method to calculate planet's position
    func updatePosititon() -> (){
        
    }
    
    
    
}
