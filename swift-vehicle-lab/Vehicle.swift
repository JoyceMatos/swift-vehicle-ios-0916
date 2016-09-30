//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Joyce Matos on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0  // measured in angular degrees, 0 to 360.
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        speed += (1/10) * maxSpeed
        if speed > maxSpeed {
            speed -= (1/10) * maxSpeed
        }
    }
    
        func decelerate() {
            speed -= (1/10) * maxSpeed
            if speed < 0 {
                speed += (1/10) * maxSpeed
            }
        
    }
    
    func turnRight() {
        heading += 90
        var turn = heading
        speed = speed/2
        if heading > 360 {
            heading = heading - 360
        }
        if speed == 0 {
            heading = 0
        }
        
//        if heading < 0 {
//            heading = 360 + turn
//        }
//        else if heading > 360 {
//            heading = 360 - turn
//        }
//        
    }
    
    func turnLeft() {
        heading -= 90
        var turn = heading
        speed = speed/2
        if heading < 0 {
            heading = 360 + turn
        }
        if speed == 0 {
            heading = 0
        }
    }
}
