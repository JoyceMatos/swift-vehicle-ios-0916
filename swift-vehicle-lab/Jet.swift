//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Joyce Matos on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        if inFlight == true {
            self.altitude += (1/5) * maxAltitude
            decelerate()
            if self.altitude > maxAltitude {
                self.altitude -= (1/5) * maxAltitude
            }
            }
        }
    
    override func dive() {
            if inFlight == true {
                altitude -= (1/5) * maxAltitude
                accelerate()
                if self.altitude < 0 {
                    self.altitude += (1/5) * maxAltitude
                }
        }
    }
    
    func afterburner() {
        if inFlight == true && speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
