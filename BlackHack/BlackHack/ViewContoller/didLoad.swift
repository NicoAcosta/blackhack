//
//  didLoad.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation
import UIKit

extension ViewController {
    
    //  viewDidLoad
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        dealerCardsButtons  =   [dealerA, dealer2, dealer3, dealer4, dealer5, dealer6, dealer7, dealer8, dealer9, dealer10, dealerJ, dealerQ, dealerK]
        userCardsButtons    =   [userA, user2, user3, user4, user5, user6, user7, user8, user9, user10, userJ, userQ, userK]
        backgroundButtons   =   dealerCardsButtons + userCardsButtons
        textButtons         =   [userClean, userUndo, dealerClean, dealerUndo]
        thinLabels          =   [dealerLabel, dealerCardsLabel, dealerSumStaticLabel, dealerStatusLabel, dealerOddsSStaticLabel, dealerOddsBStaticLabel, userLabel, userOddsBStaticLabel, userOddsNBStaticLabel, userSumStaticLabel, userStatusLabel]
        thickLabels         =   [dealerSumLabel, dealerStatusLabel, dealerOddsBLabel, dealerOddsSLabel, userOddsBLabel, userOddsNBLabel, userSumLabel, userStatusLabel]
        
        updateBoth()
        
        initStyle()
        
        
    }
    
    
}
