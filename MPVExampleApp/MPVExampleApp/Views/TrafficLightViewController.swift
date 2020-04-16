//
//  TrafficLightViewController.swift
//  MPVExampleApp
//
//  Created by Thiago Martins on 15/04/20.
//  Copyright © 2020 Thiago Anderson Martins. All rights reserved.
//

import UIKit

class TrafficLightViewController : UIViewController, TrafficLightViewDelegate {
    
    // Private Properties:
    // - Presenter:
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())
    
    // IB Properties:
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // Overridden Methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }
                        
    // Public Methods:
    // - IB Actions:
    @IBAction func redLightButtonAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Red")
    }
    
    @IBAction func yellowLightButtonAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Yellow")
    }
    
    @IBAction func greenLightButtonAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Green")
    }
    
    // - TrafficLightViewDelegate:
    func displayTrafficLight(description: (String)) {
        descriptionLabel.text = description
    }
                            
}
