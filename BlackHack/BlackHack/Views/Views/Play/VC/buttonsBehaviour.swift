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
            if !dealerCardsButtons.areEnabled {
                    dealerCardsButtons.enable()
            }
            if dealerCleanUndoButtons.areEnabled {
                dealerCleanUndoButtons.disable()
            }
        case .stood, .bust, .blackJack:
            if dealerCardsButtons.areEnabled {
                dealerCardsButtons.disable()
            }
        case .playing:
            if !dealerCardsButtons.areEnabled {
                    dealerCardsButtons.enable()
            }
            if !dealerCleanUndoButtons.areEnabled {
                dealerCleanUndoButtons.enable()
            }
        }
        
    }
    
    // Ocultar/mostrar botones de user segun corresponda
    
    func checkUserButtonsBehaviour() {
        
        switch game.userStatus {
        
        case .empty:
            if !userCardsButtons.areEnabled {
                    userCardsButtons.enable()
            }
            if userCleanUndoButtons.areEnabled {
                userCleanUndoButtons.disable()
            }
        case .stood, .bust, .blackJack:
            if userCardsButtons.areEnabled {
                userCardsButtons.disable()
            }
        case .playing:
            if !userCardsButtons.areEnabled {
                    userCardsButtons.enable()
            }
            if !userCleanUndoButtons.areEnabled {
                userCleanUndoButtons.enable()
            }
        }
    }
    
}
