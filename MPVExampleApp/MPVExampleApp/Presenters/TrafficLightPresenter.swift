//
//  TrafficLightPresenter.swift
//  MPVExampleApp
//
//  Created by Thiago Martins on 15/04/20.
//  Copyright © 2020 Thiago Anderson Martins. All rights reserved.
//

import Foundation

protocol TrafficLightViewDelegate : NSObjectProtocol {
    func displayTrafficLight(description : (String))
}

class TrafficLightPresenter {
    
    // Private Properties:
    // - Constants:
    private let trafficLightService : TrafficLightService
    // - External References:
    private weak var trafficLightViewDelegate : TrafficLightViewDelegate?
    
    // Initialization:
    init(trafficLightService : TrafficLightService) {
        self.trafficLightService = trafficLightService
    }
    
    // Public Methods:
    // - Setters:
    public func setViewDelegate(trafficLightViewDelegate : TrafficLightViewDelegate) {
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }
    
    // - Actions:
    public func trafficLightColorSelected(colorName : (String)) {        
        trafficLightService.getTrafficLight(colorName: colorName, callBack: { [weak self] trafficLight in
            if let trafficLight = trafficLight {
                self?.trafficLightViewDelegate?.displayTrafficLight(description: trafficLight.description)
            }
        })
    }
    
}



