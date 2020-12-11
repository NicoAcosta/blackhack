//
//  dealer.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class Dealer: Deck {

    //  (Bool)  Si se queda - acá para overridearlo
    internal override func stands() -> Bool {
        return
            (   isHandType(.soft)   &&  (7...11).contains(sum.value)    ) ||
            (   isHandType(.hard)   &&  (17...21).contains(sum.value)   )
    }
    
}

