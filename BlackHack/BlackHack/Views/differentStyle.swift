//
//  differentStyle.swift
//
//  Created by Nicolás Acosta on 13/11/2020.
//

import Foundation
import UIKit

//   INTERFACE STYLE         STATUS BAR STYLE

//      dark mode     -->      ligth content    (white letters in status bar)
//      light mode    -->      dark content     (black letters in status bar)


class DifferentStyleViewController : UIViewController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkInterfaceStyle()
        
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
        
        let currentInterfaceStyle = traitCollection.userInterfaceStyle
        
        switch currentInterfaceStyle {
        case .unspecified:
            changeStatusBarStyle(.light)
        case .light:
            changeStatusBarStyle(.dark)
        case .dark:
            changeStatusBarStyle(.light)
        @unknown default:
            changeStatusBarStyle(.light)
        }
    }
    
    
    
    //  Al cambiar el interface style (dark/light) cambiar status bar style
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        checkInterfaceStyle()
    }
    
}



class DifferentStyleNavigationController : UINavigationController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkInterfaceStyle()
        
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
        
        let currentInterfaceStyle = traitCollection.userInterfaceStyle
        
        switch currentInterfaceStyle {
        case .unspecified:
            changeStatusBarStyle(.light)
        case .light:
            changeStatusBarStyle(.dark)
        case .dark:
            changeStatusBarStyle(.light)
        @unknown default:
            changeStatusBarStyle(.light)
        }
    }
    
    
    
    //  Al cambiar el interface style (dark/light) cambiar status bar style
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        checkInterfaceStyle()
    }
    
}


class DifferentStyleTabBarController : UITabBarController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkInterfaceStyle()
        
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
        
        let currentInterfaceStyle = traitCollection.userInterfaceStyle
        
        switch currentInterfaceStyle {
        case .unspecified:
            changeStatusBarStyle(.light)
        case .light:
            changeStatusBarStyle(.dark)
        case .dark:
            changeStatusBarStyle(.light)
        @unknown default:
            changeStatusBarStyle(.light)
        }
    }
    
    
    
    //  Al cambiar el interface style (dark/light) cambiar status bar style
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        checkInterfaceStyle()
    }
    
}
