//
//  gradientBackground.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 15/11/2020.
//

import Foundation
import UIKit


extension UIViewController {
    
    //  Agregar esto a override func viewDidLayoutSubviews()
    func gradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func greenGradientLayer() {
        gradientLayer(
            topColor: UIColor(red: 0.0/255.0, green: 30.0/255.0, blue: 5.0/255.0, alpha: 1.0),
            bottomColor: UIColor(red: 0.0/255.0, green: 60.0/255.0, blue: 7.0/255.0, alpha: 1.0)
        )
    }
    
    
    
}
