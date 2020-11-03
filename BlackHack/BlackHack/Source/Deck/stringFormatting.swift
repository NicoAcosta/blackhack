//
//  stringFormatting.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Double {
    func decimalsPercentage () -> String {
        return String(format: "%.2f", self * 100) + " %"
    }
    func intPercentage () -> String {
        let int : Int = Int((self * 100).rounded())
        return String(int) + " %"
    }
}

extension Array where Iterator.Element == Card {
    
    func string() -> String {
        return self.map({$0.name()}).joined(separator: " - ")
    }
    
}


extension Deck {
    
    //  (String)    String con las cartas para Label
    internal func cardsString() -> String {
        if isEmpty() {
            return "Empty"
        }
            return cards.string()
    }
    
    internal func softString() -> String {
        return "\(sum.value) / \(sum.value + 10)"
    }
    
    internal func softPlus10String() -> String {
        return "\(sum.value + 10)"
    }
    
    internal func hardString() -> String {
        return String(sum.value)
    }
    
    internal func sumString() -> String {
        
        if blackJack() {
                return "BlackJack!"
        }
        
        switch sum.type {
            case .hard:
                return hardString()
            case .soft:
                return softString()
            }
    }
    
    internal func statusString() -> String {
        
        return status.string()
        
    }
    
    
    
    
    
}
