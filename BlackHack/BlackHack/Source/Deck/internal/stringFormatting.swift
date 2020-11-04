//
//  stringFormatting.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Double {
    
    var decimalsPercentage : String {
        return String(format: "%.2f", self * 100) + " %"
    }
    var intPercentage : String {
        let int : Int = Int((self * 100).rounded())
        return String(int) + " %"
    }
}

extension Array where Iterator.Element == Card {
    
    var string : String {
        return self.map({$0.name}).joined(separator: " - ")
    }
    
}


extension Deck {
    
    //  (String)    String con las cartas para Label
    internal func cardsString() -> String {
        if isEmpty() {
            return "Empty"
        }
            return cards.string
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
        
        switch sum.handType {
            case .hard:
                return hardString()
            case .soft:
                return softString()
            case .blackJack:
                return "21"
            }
    }
    
    internal func statusString() -> String {
        
        return status.string()
        
    }
    
    
    
    
    
}
