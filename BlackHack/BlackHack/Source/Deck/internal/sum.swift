//
//  logicSum.swift
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
    
    internal func sumResult() -> SumResult {
        
        let sumNoAces = cards.filter({$0 != .ace}).map({$0.value}).reduce(0, +)
        
        let amountOfAces = self.amountOfAces()
        
        let superNumber = sumNoAces + amountOfAces
        
        if blackJack() {
            return SumResult(value: 21, handType: .blackJack)
        }
        
        if amountOfAces == 0 {
                return SumResult(value: superNumber, handType: .hard)
        }
        
        if superNumber < 12 {
            return SumResult(value: superNumber, handType: .soft)
        } else {
            return SumResult(value: superNumber, handType: .hard)
        }
        
    }
    
    internal func isHandType(_ handType: HandType) -> Bool {
        return sum.handType == handType
    }
    
    internal func updateResult() {
        sum = sumResult()
    }
    
}

