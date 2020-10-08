//
//  croupier.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class Croupier: Deck {

    //  (Bool)  Si se queda
    func stood() -> Bool {
        return
            (   sum.type == .orPlus10   &&  (7...11).contains(sum.value)    ) ||
            (   sum.type == .precise    &&  (17...21).contains(sum.value)   )
    }
    
    
    
    
    
}
