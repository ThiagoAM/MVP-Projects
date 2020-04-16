//
//  TrafficLightService.swift
//  MPVExampleApp
//
//  Created by Thiago Martins on 15/04/20.
//  Copyright © 2020 Thiago Anderson Martins. All rights reserved.
//

import Foundation

class TrafficLightService {
    
    // Public Methods:
    public func getTrafficLight(colorName : (String), callBack : (TrafficLight?) -> Void) {
        let trafficLights = [
            TrafficLight(colorName: "Red", description: "Stop"),
            TrafficLight(colorName: "Green", description: "Go"),
            TrafficLight(colorName: "Yellow", description: "About to change to yellow"),
        ]
        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callBack(foundTrafficLight)
        } else {            
            callBack(nil)
        }
    }
    
}
