//
//  user.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class User: Deck {
    
    func updateStatus() {
        if self.bust() {
            status = .bust
        } else {
            status = .playing
        }
    }
    
    func oddsOfBustingString() -> String {
        return oddsOfBustingNextHit().percentage()
    }
    
    func oddsOfNotBustingString() -> String {
        return oddsOfNotBustingNextHit().percentage()
    }
    
    func update() {
        updateSum()
        updateStatus()
    }
    
    
}
