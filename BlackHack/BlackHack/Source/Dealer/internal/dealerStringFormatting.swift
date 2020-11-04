//
//  stringFormatting.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 04/11/2020.
//

import Foundation

extension Dealer {
    
    internal func oddsOfBustingString() -> String {
        return oddsOfBusting().intPercentage
    }
    
    internal func oddsOfStandingString() -> String {
        return oddsOfStanding().intPercentage
    }
    
    internal func sumDealerString() -> String {
    
        switch sum.handType {
            case .blackJack:
                    return "21"
            case .hard:
                    return hardString()
            case .soft:
                if stands() {
                    return softPlus10String()
                }
                    return softString()
            }
        
    }
    
}
