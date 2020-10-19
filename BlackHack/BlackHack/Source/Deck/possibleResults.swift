//
//  possibleResults.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Deck {
    
    //  (Bool)  Si hizo blackjack
    func blackJack() -> Bool {
        return
            amountOfCards() == 2   &&  hasAce()   &&  hasTens()
    }
    
    //  (Bool)  Si se pasó
    func bust() -> Bool {
        return sum.value > 21
    }
    
}
