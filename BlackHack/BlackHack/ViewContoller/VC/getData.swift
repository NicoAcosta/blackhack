//
//  data.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation

//  Info

extension ViewController {
    
    //  Actualizar data de dealer
    
    func updateDealerData() {
        let info = game.dealerData
        dealerSumLabel.text     =   info.sum
        dealerStatusLabel.text  =   info.status
        dealerCardsLabel.text   =   info.cards
        dealerOddsBLabel.text   =   info.oddsNegative
        dealerOddsSLabel.text   =   info.oddsPositive
    }
    
    
    
    //  Actualizar data de user
    
    func updateUserData() {
        let info = game.userData
        userSumLabel.text       =   info.sum
        userStatusLabel.text    =   info.status
        userCardsLabel.text     =   info.cards
        userOddsBLabel.text     =   info.oddsNegative
        userOddsNBLabel.text    =   info.oddsPositive
    }
    
}
