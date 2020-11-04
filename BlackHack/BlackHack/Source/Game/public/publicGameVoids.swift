//
//  accessors.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 27/10/2020.
//

import Foundation

extension Game {
    
    func dealerUpdate() {
        dealer.update()
    }
    
    func userUpdate() {
        user.update()
    }
    
    func updateBoth() {
        dealerUpdate()
        userUpdate()
    }
    
    
    
    func dealerAdd(_ card: Card) {
        dealer.add(card)
    }
    
    func userAdd(_ card: Card) {
        user.add(card)
    }
    
    func dealerClean() {
        dealer.clean()
    }
    
    func userClean() {
        user.clean()
    }
    
    func dealerUndo() {
        dealer.undo()
    }
    
    func userUndo() {
        user.undo()
    }
    
    
    
    func reset() {
        user.clean()
        dealer.clean()
    }
    

    
    
}

