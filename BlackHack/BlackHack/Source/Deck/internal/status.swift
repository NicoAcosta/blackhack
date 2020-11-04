//
//  status.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 04/11/2020.
//

import Foundation

extension Deck {
    
    //  (Bool)  Si se pasó
    internal func bust() -> Bool {
        return sum.value > 21
    }
    
    internal func updateStatus() {
        
                if isEmpty() {
            status = .empty
        } else  if isHandType(.blackJack) {
            status = .blackJack
        } else  if stands() {
            status = .stood
        } else if bust() {
            status = .bust
        } else {
            status = .playing
        }

    }
    
}
