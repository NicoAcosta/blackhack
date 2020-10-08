//
//  deck.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

enum Status {
    case playingClear
    case playingAmbiguous
    case bust
    case stood
}

enum TypeOfSum {
    case precise
    case orPlus10
}

struct Result {
    var value: Int
    var type: TypeOfSum
    var hasAces: Bool
}


class Deck {
    
    //  [Cards] Array de cartas
    var cards: [Card] = []
    
    //  Enum    Status: stood, bust, playingClear, playing Ambiguous
    var status: Status = .playingClear

    var sum: Result
    
}
