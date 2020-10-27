//
//  possibleResults.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Deck {
    
    //  (Bool)  Si hizo blackjack
    internal func blackJack() -> Bool {
        return
            amountOfCards() == 2   &&  hasAce()   &&  hasTens()
    }
    
    //  (Bool)  Si se pasó
    internal func bust() -> Bool {
        return sum.value > 21
    }
    
    //  func stands -> en declaration para overridearlo
    
}
