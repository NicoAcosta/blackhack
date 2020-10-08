//
//  user.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class User: Deck {
    
    func updateStatus() {
        if sum.value > 21 {
            status = .bust
        }
    }
    
}
