//
//  user.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class User: Deck {
    
    internal override func stands() -> Bool {
        return blackJack() || sum.value == 21
    }
    
    func oddsOfBustingString() -> String {
        return oddsOfBustingNextHit().percentage()
    }
    
    func oddsOfNotBustingString() -> String {
        return oddsOfNotBustingNextHit().percentage()
    }
    
}
