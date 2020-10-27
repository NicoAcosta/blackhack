//
//  logicCards.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Deck {
    
    //  (Bool)  Tiene par
    internal func pair() -> Bool {
        return
            amountOfCards() == 2 &&
            cards.first == cards.last
    }
    
    //  (Bool)  Mazo vació
    internal func isEmpty() -> Bool {
        return cards.isEmpty
    }
    
    //  (Int)   Cantidad de cartas
    internal func amountOfCards() -> Int {
        return cards.count
    }
    
    //  (Bool)  Si tiene una carta por su nombre
    internal func has(_ card: Card) -> Bool {
        return cards.contains(card)
    }
    
    //  (Bool)  Si tiene una carta con ese valor (10 cuenta para 10, J, Q, K)
    internal func hasByValue(_ value: Int) -> Bool {
        return cards.contains(where: {$0.value() == value})
    }
    
    //  (Bool)  Si tiene un As
    internal func hasAce() -> Bool {
        return has(.ace)
    }
    
    //  (Bool)  Si tiene cartas con valor 10
    internal func hasTens() -> Bool {
        return hasByValue(10)
    }
    
    //  (Int)   Cuántas veces está presente una carta por su nombre
    internal func amountOf(_ card: Card) -> Int {
        return cards.filter({$0 == card}).count
    }
    
    //  (Int)   Cuántas cartas hay con ese valor (10 cuenta para 10, J, Q, K)
    internal func amountOfByValue(_ value: Int) -> Int {
        return cards.filter({$0.value() == value}).count
    }
    
    //  (Int)   Cantidad de ases
    internal func amountOfAces() -> Int {
        return amountOf(.ace)
    }
    
}
