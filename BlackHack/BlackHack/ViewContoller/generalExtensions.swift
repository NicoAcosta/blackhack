//
//  UIViewsExtensions.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation
import UIKit

extension UIView {
    
    func hide() {
        self.isHidden = true
    }
    
    func show() {
        self.isHidden = false
    }
    
}

extension UIButton {
    
    func enable() {
        self.isEnabled  =   true
        self.alpha      =   1
    }
    
    func disable() {
        self.isEnabled  =   false
        self.alpha      =   0.6
    }
    
    func titleColor(_ color: UIColor) {
        self.setTitleColor(color, for: .normal)
    }
    
    func backgroundColor(_ color: UIColor) {
        self.backgroundColor = color
    }
    
}

extension UILabel {
    
    func color(_ color: UIColor) {
        self.textColor = color
    }
    
    func text(_ text: String) {
        self.text = text
    }
    
}
