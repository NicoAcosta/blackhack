//
//  cardsPublicReturns.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 13/11/2020.
//

import Foundation


extension Deck {
    
    //  (Bool)  Tiene par
    func pair() -> Bool {
        return
            amountOfCards() == 2 &&
            cards.first == cards.last
    }
    
    //  (Card)  Primera carta del mazo
    func firstCard() -> Card? {
        if let firstCard = cards.first {
            return firstCard
        }
        return nil
    }
    
    //  (Int)   First card value
    func firstCardValue() -> Int? {
        if let firstCard = cards.first {
            return firstCard.value
        }
        return nil
    }
    
    //  (Int)   Cantidad de cartas
    func amountOfCards() -> Int {
        return cards.count
    }
    
    //  (Int)   Sum value
    func sumValue() -> Int {
        return sum.value
    }
    
    //  (Bool)  Sum is of a handType
    func isHandType(_ handType: HandType) -> Bool {
        return sum.handType == handType
    }
    
    
    
}
