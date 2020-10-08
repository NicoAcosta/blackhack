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


class Deck {
    
    //  [Cards] Array de cartas
    var cards: [Card] = []
    
    //  Enum    Status: stood, bust, playingClear, playing Ambiguous
    var status: Status = .playingClear

}
