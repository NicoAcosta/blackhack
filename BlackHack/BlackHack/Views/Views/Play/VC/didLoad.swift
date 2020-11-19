//
//  didLoad.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation
import UIKit
import FirebaseAnalytics

extension PlayViewController {
    
    //  viewDidLoad
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //  Grupos de buttons y labels para cambiar cosas después
        
        dealerCardsButtons  =   [dealerA, dealer2, dealer3, dealer4, dealer5, dealer6, dealer7, dealer8, dealer9, dealer10, dealerJ, dealerQ, dealerK]
        userCardsButtons    =   [userA, user2, user3, user4, user5, user6, user7, user8, user9, user10, userJ, userQ, userK]
        dealerCleanUndoButtons = [dealerClean, dealerUndo]
        userCleanUndoButtons = [userClean, userUndo]
        backgroundButtons   =   dealerCardsButtons + userCardsButtons
        textButtons         =   [userClean, userUndo, dealerClean, dealerUndo]
        thinLabels          =   [dealerLabel, dealerCardsLabel, dealerSumStaticLabel, dealerStatusStaticLabel, dealerOddsSStaticLabel, dealerOddsBStaticLabel, userLabel, userOddsBStaticLabel, userOddsNBStaticLabel, userSumStaticLabel, userStatusStaticLabel, userCardsLabel]
        thickLabels         =   [dealerSumLabel, dealerStatusLabel, dealerOddsBLabel, dealerOddsSLabel, userOddsBLabel, userOddsNBLabel, userSumLabel, userStatusLabel]
        
        //  Actualizar data de dealer y user
        updateDealerAndUser()
        
        //  Actualizar status bar style segun interface user style
        setNeedsStatusBarAppearanceUpdate()
        
        //  Analytics
        Analytics.logEvent("PlayViewController", parameters: ["a":"a"])
        
    }
    
    
}
