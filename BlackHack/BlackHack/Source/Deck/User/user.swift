//
//  user.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class User: Deck {
    
    func updateStatus() {
        if isEmpty() {
            status = .empty
        } else if bust() {
            status = .bust
        } else if stands() {
            status = .stood
        } else {
            status = .playing
        }
    }
    
    func update() {
        updateSum()
        updateStatus()
    }
    
    
    func oddsOfBustingString() -> String {
        return oddsOfBustingNextHit().percentage()
    }
    
    func oddsOfNotBustingString() -> String {
        return oddsOfNotBustingNextHit().percentage()
    }
    
}


extension User {
    
    func stands() -> Bool {
        return blackJack() || sum.value == 21
    }
    
}
