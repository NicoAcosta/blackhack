//
//  logicSum.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Deck {
    
    //  (Int)   Suma de valores de cartas. Ases como 11
    func sumNormal() -> Int {
        return cards.map({$0.value()}).reduce(0, +)
    }
    
    //  (Int)   Suma de valores de cartas, ases como 1
    func sumAcesAs1() -> Int {
        return self.sumNormal() - ( 10 * self.amountOfAces() )
    }
    
    //  (Int)   Suma de valores de cartas. La cantidad amountOfAcesAs1 de Ases cuentan como 1
    func sumAcesAs1(amountOfAcesAs1 amount: Int) -> Int {
        return self.sumNormal() - 10 * amount
    }
    
}
