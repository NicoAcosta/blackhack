//
//  deck.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

enum Status {
    case playing
    case bust
    case stood
    case empty
    
    func string() -> String {
        
        switch self {
        case .bust:
            return "Bust"
        case .playing:
            return "Playing"
        case .stood:
            return "Stood"
        case .empty:
            return "Not started"
        }
        
    }
}

enum TypeOfHand {
    case hard
    case soft
}

struct Result {
    var value: Int
    var type: TypeOfHand
    var hasAces: Bool
}


class Deck {
    
    //  [Cards] Array de cartas
    var cards: [Card] = []
    
    //  Enum    Status: stood, bust, playingClear, playing Ambiguous
    var status: Status = .playing
    
    var sum: Result = Result(value: 0, type: .hard, hasAces: false)
    
    // esta aca para poder overridearlo
    func stands() -> Bool {
        return true
    }
    
}
