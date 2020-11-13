//
//  deck.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

class Deck {
    
    //  [Cards] Array de cartas
    internal var cards: [Card] = []
    
    //  Enum    Status: stood, bust, empty, playing
    internal var status: Status = .empty
    
    //  Result                     sum      hard/soft
    internal  var sum: SumResult = SumResult(value: 0, handType: .hard)
    
    
    
    
    // esta aca para poder overridearlo
    internal func stands() -> Bool {
        return true
    }
    
}
