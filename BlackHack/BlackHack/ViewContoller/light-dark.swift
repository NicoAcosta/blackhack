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
    /*
    func buttonsAndLabelsColor(_ color: UIColor) {
        backgroundButtons.forEach({$0.backgroundColor = color})
        textButtons.forEach({$0.setTitleColor(color, for: .normal)})
        thinLabels.forEach({$0.textColor = color})
        thickLabels.forEach({$0.textColor = color})
        strategyView.backgroundColor = color
        separator.backgroundColor = color
    }
    */
    
    func updateStyle(style: Style) {
        
        switch style {
        case .light:
            //buttonsAndLabelsColor(.white)
            myPreferredStatusBarStyle = .light
        default:
            //buttonsAndLabelsColor(.black)
            myPreferredStatusBarStyle = .dark
        }
        
        setNeedsStatusBarAppearanceUpdate()
    }
    
    func initStyle() {
        
        switch traitCollection.userInterfaceStyle {
        case .unspecified:
            updateStyle(style: .light)
        case .light:
            updateStyle(style: .light)
        case .dark:
            updateStyle(style: .dark)
        @unknown default:
            updateStyle(style: .light)
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        switch traitCollection.userInterfaceStyle {
        case .unspecified:
            updateStyle(style: .light)
        case .light:
            updateStyle(style: .light)
        case .dark:
            updateStyle(style: .dark)
        @unknown default:
            updateStyle(style: .light)
        }
    }
    
}
