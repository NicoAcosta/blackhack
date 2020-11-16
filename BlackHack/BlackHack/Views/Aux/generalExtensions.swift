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
    
    func font(_ name: String) {
        self.titleLabel?.font = UIFont(name: name, size: (self.titleLabel?.font.pointSize)!)!
    }
    
    
    
}

extension UILabel {
    
    func color(_ color: UIColor) {
        self.textColor = color
    }
    
    func text(_ text: String) {
        self.text = text
    }
    
    func font(_ name: String) {
        self.font = UIFont(name: name, size: self.font.pointSize)!
    }
    
    func fontWithSize(_ name: String, _ size: CGFloat) {
        self.font = UIFont(name: name, size: size)
    }
    
}


extension Array where Iterator.Element == UIButton {
    
    func enable() {
        self.forEach({$0.enable()})
    }
    
    func disable() {
        self.forEach({$0.disable()})
    }
    
    var areEnabled : Bool {
        return first!.isEnabled
    }
    
    
}
