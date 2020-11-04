//
//  status.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 27/10/2020.
//

import Foundation

enum Status {
    
    case playing
    case bust
    case stood
    case empty
    case blackJack
    
    func string() -> String {
        
        switch self {
        case .bust:
            return "Bust"
        case .playing:
            return "Playing"
        case .stood:
            return "Stood"
        case .empty:
            return "Not started"
        case .blackJack:
            return "BlackJack!"
        }
        
    }
}
