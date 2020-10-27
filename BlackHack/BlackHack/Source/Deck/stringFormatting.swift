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
        
        if isEmpty() {
            
            return "Empty"
     
        } else {
            
            return cards.map({$0.name()}).joined(separator: " - ")
        
        }
    }
    
    func sumString() -> String {
        
        if blackJack() {
            return "BlackJack"
        }
        
        switch sum.type {
            case .hard:
                return String(sum.value)
            case .soft:
                return "\(sum.value) / \(sum.value + 10)"
            }
    }
    
    func statusString() -> String {
        
        return status.string()
        
    }
    
    
    
    
    
}
