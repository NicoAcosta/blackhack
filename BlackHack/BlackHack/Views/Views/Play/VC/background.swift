//
//  background.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 14/11/2020.
//

import Foundation
import UIKit


extension PlayViewController {
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        if gradientLayer.superlayer != nil {
            gradientLayer.removeFromSuperlayer()
        }
        let topColor = UIColor(red: 0.0/255.0, green: 30.0/255.0, blue: 5.0/255.0, alpha: 1.0)
        let bottomColor = UIColor(red: 0.0/255.0, green: 60.0/255.0, blue: 7.0/255.0, alpha: 1.0)
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    
    
    
}
