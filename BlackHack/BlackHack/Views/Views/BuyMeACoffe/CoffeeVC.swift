//
//  CoffeVC.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 13/11/2020.
//

import Foundation

import UIKit
import InteractiveSideMenu

class CoffeeVC : UIViewController, SideMenuItemContent, Storyboardable {
    
    @IBOutlet weak var buttonView: UIView!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonView.layer.cornerRadius = 5
        
        overrideUserInterfaceStyle = .light
        setNeedsStatusBarAppearanceUpdate()
        
    }
    
    @IBAction func menu(_ sender: Any) {
        showSideMenu()
    }
    
    @IBAction func coffeeAction(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://buymeacoffee.com/blackhackapp/")!)
    }
}
