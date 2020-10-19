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
