//
//  NavigationController.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 13/11/2020.
//

import Foundation
import UIKit

class NavigationController : UINavigationController {
    
    
    
    //  Variable para poder cambiar el status bar style
    var myPreferredStatusBarStyle : Style = .light
    
    
    
    //  Cambiar la varialble que define el statur bar style
    override var preferredStatusBarStyle: UIStatusBarStyle {
        switch myPreferredStatusBarStyle {
        case .dark:
            return .darkContent
        case .light:
            return .lightContent
        }
    }
    
    
    
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
    
    
    
    //  Al cargar el view controller, chequear interface style -> status bar style
    override func viewDidLoad() {
        checkInterfaceStyle()
    }
    
    
}
