//
//  padding.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 15/11/2020.
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
