//
//  ViewController.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 11/12/2020.
//

import UIKit
import Fito

class ViewController: MyViewController, SideMenuItemContent, Storyboardable {

    override var myBackgroundGradientLayerColors: [UIColor]? {
        return [.red, .purple]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

