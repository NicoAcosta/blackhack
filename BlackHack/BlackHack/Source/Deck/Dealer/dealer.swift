//
//  dealer.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class Dealer: Deck {

    //  (Bool)  Si se queda
    internal override func stands() -> Bool {
        return
            (   sum.type == .soft   &&  (7...11).contains(sum.value)    ) ||
            (   sum.type == .hard    &&  (17...21).contains(sum.value)   )
    }
    
    
    //  (Data)  La info en strings para el view controller
    func data() -> Data {
        
        return Data (
            cards:          cardsString(),
            sum:            sumDealerString(),
            status:         statusString(),
            oddsPositive:   oddsOfStandingString(),
            oddsNegative:   oddsOfBustingString()
        )
        
    }
    
    internal func oddsOfBustingString() -> String {
        return oddsOfBusting().intPercentage()
    }
    
    internal func oddsOfStandingString() -> String {
        return oddsOfStanding().intPercentage()
    }
    
}



extension Dealer {
    
    internal func sumDealerString() -> String {
    
        if blackJack() {
                    return "BlackJack!"
        }
        
        switch sum.type {
            case .hard:
                    return hardString()
            case .soft:
                if (sum.value >= 7) {
                    return softPlus10String()
                }
                    return softString()
            }
        
    }
        
    
    
}
