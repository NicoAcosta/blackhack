//
//  stringFormatting.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Double {
    func percentage () -> String {
        return String(format: "%.2f", self) + " %"
    }
}

extension Deck {
    //  (String)    String con las cartas para Label
    func cardsString() -> String {
        if self.isEmpty() {
            return "Empty"
        } else if self.amountOfCards() == 1 {
            return self.cards.first!.name()
        } else {
            let names = self.cards.map({$0.name()})
            var string = names.first!
            for name in names.dropFirst() {
                string += "  -  \(name)"
            }
            return string
        }
    }
    
    func sumString() -> String {
        switch sum.type {
            case .precise:
                return String(sum.value)
            case .orPlus10:
                return "\(sum.value) / \(sum.value + 10)"
            }
    }
    
    
    
    
}
