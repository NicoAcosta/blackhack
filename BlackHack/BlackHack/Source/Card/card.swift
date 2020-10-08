//
//  card.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

enum Card : Comparable {
    
    //  Posibles códigos del enum
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    
    //  (Int)   Devuelve el valor de cada carta
    func value() -> Int {
        switch self {
        case .two:      return 2
        case .three:    return 3
        case .four:     return 4
        case .five:     return 5
        case .six:      return 6
        case .seven:    return 7
        case .eight:    return 8
        case .nine:     return 9
        case .ten:      return 10
        case .jack:     return 10
        case .queen:    return 10
        case .king:     return 10
        case .ace:      return 11
        }
    }
    
    //  (String)   Devuelve el valor de cada carta
    func name() -> String {
        switch self {
        case .two:      return "2"
        case .three:    return "3"
        case .four:     return "4"
        case .five:     return "5"
        case .six:      return "6"
        case .seven:    return "7"
        case .eight:    return "8"
        case .nine:     return "9"
        case .ten:      return "10"
        case .jack:     return "J"
        case .queen:    return "Q"
        case .king:     return "K"
        case .ace:      return "A"
        }
    }
    
    //  >: de acuerdo al valor de la carta
    static func > (aCard: Card, anotherCard: Card) -> Bool {
        return  aCard.value() > anotherCard.value()
    }
    
    //  <: de acuerda al valor de la carta
    static func < (aCard:Card, anotherCard: Card) -> Bool {
        return aCard.value() < anotherCard.value()
    }
    
}

