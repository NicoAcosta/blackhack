//
//  card.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

enum Card {
    
    //  Posibles códigos del enum
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    
    //  (Int)   Devuelve el valor de cada carta
    var value : Int {
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
  
    
    //  (String)   Devuelve el nombre de cada carta
    var name: String {
        if self == .ace{
            return "A"
        }
        return String(self.value)
    }

}

