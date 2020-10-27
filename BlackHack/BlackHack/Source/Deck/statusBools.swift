//
//  statusBools.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 27/10/2020.
//

import Foundation

extension Deck {
    
    func statusEmpty() -> Bool {
        return status == .empty
    }
    
    func statusPlaying() -> Bool {
        return status == .playing
    }
    
    func statusBust() -> Bool {
        return status == .bust
    }
    
    func statusStood() -> Bool {
        return status == .stood
    }
    
}
