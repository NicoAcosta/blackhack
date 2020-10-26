//
//  commonUpdates.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Deck {
    
    func updateSum() {
        sum = sumResult()
    }
    
    func updateStatus() {
        
        if isEmpty() {
            status = .empty
        } else if stands() {
            status = .stood
        } else if bust() {
            status = .bust
        } else {
            status = .playing
        }
    }

    func update() {
        updateSum()
        updateStatus()
    }
    
}
