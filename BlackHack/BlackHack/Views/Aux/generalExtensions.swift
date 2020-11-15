//
//  UIViewsExtensions.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation
import UIKit


class UITextFieldPadding : UITextField {
    
      let padding = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
      
      required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
      }
      
      override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
      }
      
      override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
      }
      
      override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
      }
    
}


class UITextViewPadding : UITextView {
    
      required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        textContainerInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
      }
    
}





extension UIViewController {
    
    func okAlert(title: String, message: String) {
        let alert = OkAlert(title: title, message: message)
        present(alert, animated: true, completion: nil)
    }
    
    
}


class OkAlert : UIAlertController {
    
    let okAction = UIAlertAction(title: "Ok", style: .default)
    
    convenience init(title: String?, message: String?) {
        self.init(title: title, message: message, preferredStyle: .alert)
        addAction(okAction)
    }
    
}


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
