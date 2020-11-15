//
//  ViewController.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 06/10/2020.
//

import UIKit
import InteractiveSideMenu

class PlayViewController: UIViewController, SideMenuItemContent, Storyboardable {
    
    //  Outlets
    
    @IBOutlet weak var resetButton: UIBarButtonItem!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    
        //  Dealer
        
        @IBOutlet weak var dealerLabel:                 UILabel!
        
        @IBOutlet weak var dealerA:                     UIButton!
        @IBOutlet weak var dealer2:                     UIButton!
        @IBOutlet weak var dealer3:                     UIButton!
        @IBOutlet weak var dealer4:                     UIButton!
        @IBOutlet weak var dealer5:                     UIButton!
        @IBOutlet weak var dealer6:                     UIButton!
        @IBOutlet weak var dealer7:                     UIButton!
        @IBOutlet weak var dealer8:                     UIButton!
        @IBOutlet weak var dealer9:                     UIButton!
        @IBOutlet weak var dealer10:                    UIButton!
        @IBOutlet weak var dealerJ:                     UIButton!
        @IBOutlet weak var dealerQ:                     UIButton!
        @IBOutlet weak var dealerK:                     UIButton!
        @IBOutlet weak var dealerClean:                 UIButton!
        @IBOutlet weak var dealerUndo:                  UIButton!
        
        @IBOutlet weak var dealerCardsLabel:            UILabel!
        
        @IBOutlet weak var dealerSumLabel:              UILabel!
        @IBOutlet weak var dealerStatusLabel:           UILabel!
        @IBOutlet weak var dealerOddsBLabel:            UILabel!
        @IBOutlet weak var dealerOddsSLabel:            UILabel!
        
        @IBOutlet weak var dealerSumStaticLabel:        UILabel!
        @IBOutlet weak var dealerStatusStaticLabel:     UILabel!
        @IBOutlet weak var dealerOddsSStaticLabel:      UILabel!
        @IBOutlet weak var dealerOddsBStaticLabel:      UILabel!
        
        
        
        
        
        //  User

        @IBOutlet weak var userLabel:                   UILabel!
        
        @IBOutlet weak var userA:                       UIButton!
        @IBOutlet weak var user2:                       UIButton!
        @IBOutlet weak var user3:                       UIButton!
        @IBOutlet weak var user4:                       UIButton!
        @IBOutlet weak var user5:                       UIButton!
        @IBOutlet weak var user6:                       UIButton!
        @IBOutlet weak var user7:                       UIButton!
        @IBOutlet weak var user8:                       UIButton!
        @IBOutlet weak var user9:                       UIButton!
        @IBOutlet weak var user10:                      UIButton!
        @IBOutlet weak var userJ:                       UIButton!
        @IBOutlet weak var userQ:                       UIButton!
        @IBOutlet weak var userK:                       UIButton!
        @IBOutlet weak var userClean:                   UIButton!
        @IBOutlet weak var userUndo:                    UIButton!
        
        @IBOutlet weak var userCardsLabel:              UILabel!
        
        @IBOutlet weak var userSumLabel:                UILabel!
        @IBOutlet weak var userStatusLabel:             UILabel!
        @IBOutlet weak var userOddsNBLabel:             UILabel!
        @IBOutlet weak var userOddsBLabel:              UILabel!
        
        @IBOutlet weak var userOddsNBStaticLabel:       UILabel!
        @IBOutlet weak var userOddsBStaticLabel:        UILabel!
        @IBOutlet weak var userSumStaticLabel:          UILabel!
        @IBOutlet weak var userStatusStaticLabel:       UILabel!
        
        
        
        
        
        //  Strategy
        
        @IBOutlet weak var strategyView:                UIView!
        @IBOutlet weak var strategyLabel:               UILabel!
        @IBOutlet weak var separator:                   UIView!
        
    
    
    //  Logic
    
        //  Outlet arrays
        
        var dealerCardsButtons:     [UIButton]  =  []
        var userCardsButtons:       [UIButton]  =  []
        var backgroundButtons:      [UIButton]  =  []
        var textButtons:            [UIButton]  =  []
        
        var thinLabels:             [UILabel]   =  []
        var thickLabels:            [UILabel]   =  []
        
        let game = Game()

    
    
    
    //  Inferface Style + Status Bar Style
    
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
    
    //  For gradient background
    var gradientLayer = CAGradientLayer()
    
    
    
}
