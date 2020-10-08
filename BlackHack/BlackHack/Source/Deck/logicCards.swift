//
//  logicCards.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Deck {
    
    //  (Bool)  Mazo vació
    func isEmpty() -> Bool {
        return cards.isEmpty
    }
    
    //  (Int)   Cantidad de cartas
    func amountOfCards() -> Int {
        return cards.count
    }
    
    //  (Bool)  Si tiene una carta por su nombre
    func has(_ card: Card) -> Bool {
        return cards.contains(card)
    }
    
    //  (Bool)  Si tiene una carta con ese valor (10 cuenta para 10, J, Q, K)
    func hasByValue(_ value: Int) -> Bool {
        return cards.contains(where: {$0.value() == value})
    }
    
    //  (Bool)  Si tiene un As
    func hasAce() -> Bool {
        return self.has(.ace)
    }
    
    func allAces() -> Bool {
        return cards.allSatisfy({$0 == .ace})
    }
    
    //  (Bool)  Si tiene cartas con valor 10
    func hasTens() -> Bool {
        return self.hasByValue(10)
    }
    
    //  (Int)   Cuántas veces está presente una carta por su nombre
    func amountOf(_ card: Card) -> Int {
        return cards.filter({$0 == card}).count
    }
    
    //  (Int)   Cuántas cartas hay con ese valor (10 cuenta para 10, J, Q, K)
    func amountOfByValue(_ value: Int) -> Int {
        return cards.filter({$0.value() == value}).count
    }
    
    //  (Int)   Cantidad de ases
    func amountOfAces() -> Int {
        return self.amountOf(.ace)
    }
    
}
