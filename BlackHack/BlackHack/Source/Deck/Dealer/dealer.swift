//
//  dealer.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class Dealer: Deck {

    //  (Bool)  Si se queda
    override func stands() -> Bool {
        return
            (   sum.type == .soft   &&  (7...11).contains(sum.value)    ) ||
            (   sum.type == .hard    &&  (17...21).contains(sum.value)   )
    }
    
    
    func oddsOfBustingString() -> String {
        return oddsOfBusting().percentage()
    }
    
    func oddsOfStandingString() -> String {
        return oddsOfStanding().percentage()
    }
    
}



extension Dealer {
    
    func sumDealerString() -> String {
    
        if blackJack() {
            return "BlackJack!"
        }
        
        switch sum.type {
            case .hard:
                return String(sum.value)
            case .soft:
                if (sum.value >= 7) {
                    return "\(sum.value + 10)"
                }
                return "\(sum.value) / \(sum.value + 10)"
            }
        
    }
        
    
    
}
