//
//  buttonsBehaviour.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 04/11/2020.
//

import Foundation

//  Buttons behaviour



extension ViewController {
    
    func checkDealerButtonsBehaviour() {
        
        switch game.dealerStatus {
        
        case .empty:
            if !dealerA.isEnabled {
                    dealerCardsButtons.forEach({$0.enable()})
            }
            if dealerClean.isEnabled {
                dealerClean.disable(); dealerUndo.disable()
            }
        case .stood, .bust, .blackJack:
            if dealerA.isEnabled {
                dealerCardsButtons.forEach({$0.disable()})
            }
        case .playing:
            if !dealerA.isEnabled {
                    dealerCardsButtons.forEach({$0.enable()})
            }
            if !dealerClean.isEnabled {
                dealerClean.disable(); dealerUndo.enable()
            }
        }
        
    }
    
    func checkUserButtonsBehaviour() {
        
        switch game.userStatus {
        
        case .empty:
            if !userA.isEnabled {
                    userCardsButtons.forEach({$0.enable()})
            }
            if userClean.isEnabled {
                userClean.disable(); userUndo.disable()
            }
        case .stood, .bust, .blackJack:
            if userA.isEnabled {
                userCardsButtons.forEach({$0.disable()})
            }
        case .playing:
            if !userA.isEnabled {
                    userCardsButtons.forEach({$0.enable()})
            }
            if !userClean.isEnabled {
                userClean.disable(); userUndo.enable()
            }
        }
    }
    
}
