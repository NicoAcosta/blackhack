//
//  buttonsBehaviour.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 04/11/2020.
//

import Foundation

//  Buttons behaviour



extension PlayViewController {
    
    //  Si no tiene cartas, deshabilitar Clean y Undo
    
    //  Si se pasa, se queda o blackjack, deshabilitar botones de cartas
    
    
    
    
    // Ocultar/mostrar botones de dealer segun corresponda
    
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
                dealerClean.enable(); dealerUndo.enable()
            }
        }
        
    }
    
    // Ocultar/mostrar botones de user segun corresponda
    
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
                userClean.enable(); userUndo.enable()
            }
        }
    }
    
}
