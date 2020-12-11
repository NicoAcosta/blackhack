//
//  dealerData.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 04/11/2020.
//

import Foundation

extension Dealer {
    
    //  (Data)  La info en strings para el view controller
    var data : Data {
        
        return Data (
            cards:          cardsString(),
            sum:            sumDealerString(),
            status:         statusString(),
            oddsPositive:   oddsOfStandingString(),
            oddsNegative:   oddsOfBustingString()
        )
        
    }
    
}
