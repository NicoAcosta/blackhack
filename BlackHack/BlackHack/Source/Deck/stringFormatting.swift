//
//  stringFormatting.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Double {
    func percentage () -> String {
        return String(format: "%.2f", self * 100) + " %"
    }
}

extension Deck {
    //  (String)    String con las cartas para Label
    func cardsString() -> String {
        
        if self.isEmpty() {
            return "Empty"
        }
        
        if self.amountOfCards() == 1 {
            return self.cards.first!.name()
            
        } else {
            return cards.map({$0.name()}).joined(separator: " - ")
        }
    }
    
    func sumString() -> String {
        
        if self.blackJack() {
            return "BlackJack"
        }
        
        switch sum.type {
            case .precise:
                return String(sum.value)
            case .orPlus10:
                return "\(sum.value) / \(sum.value + 10)"
            }
    }
    
    
    
    
}
