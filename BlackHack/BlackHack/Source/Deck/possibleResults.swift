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
            self.amountOfCards() == 2   &&  self.hasAce()   &&  self.hasTens()
    }
    
    //  (Bool)  Si se pasó
    func bust() -> Bool {
        return self.sumAcesAs1() > 21
    }
    
}
