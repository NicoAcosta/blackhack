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



extension ViewController {
    
    func updateStyle(style: Style) {
        
        switch style {
        case .dark:
            myPreferredStatusBarStyle = .dark
        case .light:
            myPreferredStatusBarStyle = .light
        }
        
        setNeedsStatusBarAppearanceUpdate()
    }
    
    
    
    func checkStyle() {
        
        switch traitCollection.userInterfaceStyle {
        case .unspecified:
            updateStyle(style: .light)
            //lightFonts()
        case .light:
            updateStyle(style: .light)
            //lightFonts()
        case .dark:
            updateStyle(style: .dark)
            //darkFonts()
        @unknown default:
            updateStyle(style: .light)
            //lightFonts()
        }
        
    }
    
    
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        checkStyle()
        
    }
    
    
    
    func darkFonts() {
        /*
        backgroundButtons.forEach({$0.font("GothamMedium")})
        textButtons.forEach({$0.font("GothamMedium")})
        thinLabels.forEach({$0.font("GothamMedium")})
        thickLabels.forEach({$0.font("GothamBold")})
        */
    }
    
    func lightFonts() {
        
        backgroundButtons.forEach({$0.font("GothamLight")})
        textButtons.forEach({$0.font("GothamLight")})
        thinLabels.forEach({$0.font("GothamLight")})
        thickLabels.forEach({$0.font("GothamMedium")})
        
    }
    
    
}
