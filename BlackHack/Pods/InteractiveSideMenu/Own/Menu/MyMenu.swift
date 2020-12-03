//
//  MyMenu.swift
//  NicoAcosta
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit

class MyMenu : MenuVC {
    
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override var myAmountOfMenuItems : Int? {
        return nil
    }
    
    override var myUserInterfaceStyle : UIUserInterfaceStyle {
        return .light
    }
    
    override var myBackgroundGradientLayerColors : [UIColor]? {
        return nil
    }
    
    override var myBackgroundColor : UIColor? {
        return nil
    }
    
    override var myAppName : String? {
        return nil
    }
    
    override var myAppNameLabel : UILabel? {
        return appNameLabel
    }
    
    override var myTableView: UITableView? {
        return tableView
    }
    
    
}

