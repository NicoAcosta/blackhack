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
    
    
    //  Cambiar status bar style
    func changeStatusBarStyle(_ style: Style) {
        switch style {
        case .dark:
            myPreferredStatusBarStyle = .dark
        case .light:
            myPreferredStatusBarStyle = .light
        }
        setNeedsStatusBarAppearanceUpdate()
    }
    
    
    
    //  Cambiar status bar style según interface style
    func checkInterfaceStyle() {
        switch traitCollection.userInterfaceStyle {
        case .unspecified:
            changeStatusBarStyle(.light)
        case .light:
            changeStatusBarStyle(.light)
        case .dark:
            changeStatusBarStyle(.dark)
        @unknown default:
            changeStatusBarStyle(.light)
        }
    }
    
    
    
    //  Al cambiar el interface style (dark/light) cambiar status bar style
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        checkInterfaceStyle()
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
