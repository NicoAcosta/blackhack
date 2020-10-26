//
//  croupier.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class Croupier: Deck {

    //  (Bool)  Si se queda
    override func stands() -> Bool {
        return
            (   sum.type == .orPlus10   &&  (7...11).contains(sum.value)    ) ||
            (   sum.type == .precise    &&  (17...21).contains(sum.value)   )
    }
    
    
    func oddsOfBustingString() -> String {
        return oddsOfBusting().percentage()
    }
    
    func oddsOfStandingString() -> String {
        return oddsOfStanding().percentage()
    }
    
}



extension Croupier {
    
    func sumCroupierString() -> String {
    
        if blackJack() {
            return "BlackJack!"
        }
        
        switch sum.type {
            case .precise:
                return String(sum.value)
            case .orPlus10:
                if (sum.value >= 7) {
                    return "\(sum.value + 10)"
                }
                return "\(sum.value) / \(sum.value + 10)"
            }
        
    }
        
    
    
}
