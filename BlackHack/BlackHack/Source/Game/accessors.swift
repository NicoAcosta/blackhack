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
    
    func updateAll() {
        dealerUpdate()
        userUpdate()
    }
    
    func dealerData() -> Data {
        return dealer.data()
    }
    
    func userData() -> Data {
        return user.data()
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
    
    func dealerStatusEmpty() -> Bool {
        return dealer.statusEmpty()
    }
    
    func dealerStatusBust() -> Bool {
        return dealer.statusBust()
    }
    
    func dealerStatusPlaying() -> Bool {
        return dealer.statusPlaying()
    }
    
    func dealerStatusStood() -> Bool {
        return dealer.statusStood()
    }
    
    func userStatusEmpty() -> Bool {
        return user.statusEmpty()
    }
    
    func userStatusBust() -> Bool {
        return user.statusBust()
    }
    
    func userStatusPlaying() -> Bool {
        return user.statusPlaying()
    }
    
    func userStatusStood() -> Bool {
        return user.statusStood()
    }
    
}

