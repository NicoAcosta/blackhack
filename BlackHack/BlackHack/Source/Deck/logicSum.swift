//
//  logicSum.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Deck {
    
    internal func sumResult() -> Result {
        
        let sumNoAces = cards.filter({$0 != .ace}).map({$0.value()}).reduce(0, +)
        
        let amountOfAces = self.amountOfAces()
        
        let superNumber = sumNoAces + amountOfAces
        
        if amountOfAces == 0 {
                return Result(value: superNumber, type: .hard, hasAces: false)
        } else {
            if superNumber < 12 {
                return Result(value: superNumber, type: .soft, hasAces: true)
            } else {
                return Result(value: superNumber, type: .hard, hasAces: true)
            }
        }
        
    }
    
    internal func isSoft() -> Bool {
        return sum.type == .soft
    }
    
    internal func isHard() -> Bool {
        return sum.type == .hard
    }
    
}

