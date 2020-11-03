//
//  commonUpdates.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Deck {
    
    internal func updateResult() {
        sum = sumResult()
    }
    
    internal func updateStatus() {
        
                if isEmpty() {
            status = .empty
        } else  if isBlackHack() {
            status = .blackJack
        } else  if stands() {
            status = .stood
        } else if bust() {
            status = .bust
        } else {
            status = .playing
        }
    }

    func update() {
        updateResult()
        updateStatus()
    }
    
}
