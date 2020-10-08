//
//  croupier.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class Croupier: Deck {

    //  (Bool)  Si se se queda teniendo ases
    func standsWithAces() -> Bool {
        for index in 0...amountOfAces() {
            if (17...21).contains(self.sumAcesAs1(amountOfAcesAs1: index)) {
                return true
            }
        }
        return false
    }
    
    //  (Bool)  Si se queda
    func stood() -> Bool {
        return
            (17...21).contains(self.sumNormal()) ||
            self.standsWithAces()
    }
    
    
    
    
    
}
