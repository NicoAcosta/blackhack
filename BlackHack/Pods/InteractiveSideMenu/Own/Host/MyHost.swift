//
//  Host2.swift
//  NicoAcosta
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit

class MyHost : HostVC, Storyboardable {
    
    override var myMenuViewController : MenuViewController? {
        return nil
        //return MyMenu.storyboardViewController()
        
    }
    
    override var myMenuItemsViewControllers : [UIViewController] {
        return []
//        return [
//            FirstVC.storyboardViewController()
//            SecondVC.storyboardViewController()
//            ThridVC.storyboardViewController()
//            FourthVC.storyboardViewController()
//        ]
    }
    
    
    
}
