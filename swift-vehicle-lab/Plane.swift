//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Joyce Matos on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        if speed > 0 && altitude > 0 {
            return true
        }
        return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed) // Check instructions
    }
    
    func takeoff() {
        if inFlight == false {
        speed = (1/10) * maxSpeed
        altitude = (1/10) * maxAltitude
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight == true {
        altitude += (1/10) * maxAltitude
        decelerate()
        if altitude > maxAltitude {
            altitude -= (1/10) * maxAltitude
        }
        }

    }
    
    func dive() {
        altitude -= (1/10) * maxAltitude
        accelerate()
        if altitude < 0 {
            altitude += (1/10) * maxAltitude
        }
    }
    
    func bankRight() {
        heading += 45
        var turn = heading
        speed -= (1/10) * speed
        if heading > 360 {
            heading = heading - 360
        }
        if speed == 0 {
            heading = 0
        }
    }
    
    func bankLeft() {
        if inFlight == true {
            heading -= 45
            var turn = heading
            speed -= (1/10) * speed
            if heading < 0 {
                heading = 360 + turn
            }
            if speed == 0 {
                heading = 0
            }
        }
        
        
    }

    
    
    
}
