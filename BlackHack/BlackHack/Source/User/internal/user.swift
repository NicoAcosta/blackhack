//
//  user.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class User: Deck {
    
    //  Acá para overridearlo
    internal override func stands() -> Bool {
        return sum.value == 21
    }
    
}
