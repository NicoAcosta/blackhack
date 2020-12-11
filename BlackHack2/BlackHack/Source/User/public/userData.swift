//
//  data.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 04/11/2020.
//

import Foundation

extension User {
    
    var data : Data {
        
        return Data(
            cards:          cardsString(),
            sum:            sumString(),
            status:         statusString(),
            oddsPositive:   oddsOfNotBustingString(),
            oddsNegative:   oddsOfBustingString()
        )
        
    }
    
}
