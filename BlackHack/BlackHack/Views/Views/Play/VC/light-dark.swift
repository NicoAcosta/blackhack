//
//  interfaceStyle-light-dark.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation
import UIKit



enum Style {
    case light, dark
}



extension PlayViewController {

    
    //  Al cambiar el interface style (dark/light) cambiar status bar style
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setNeedsStatusBarAppearanceUpdate()
    }

    
    /*
    
    func darkFonts() {
        backgroundButtons.forEach({$0.font("GothamMedium")})
        textButtons.forEach({$0.font("GothamMedium")})
        thinLabels.forEach({$0.font("GothamMedium")})
        thickLabels.forEach({$0.font("GothamBold")})
    }
    
    func lightFonts() {
        
        backgroundButtons.forEach({$0.font("GothamLight")})
        textButtons.forEach({$0.font("GothamLight")})
        thinLabels.forEach({$0.font("GothamLight")})
        thickLabels.forEach({$0.font("GothamMedium")})
        
    }
 
    */
    
    
}
