//
//  oddsOfBusting.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension User {
    
    internal func oddsOfBustingNextHit() -> Double {
        
        if isEmpty() {
            return 0
        }
        
        if sum.type == .soft {
            return 0
        }
        
        switch sum.value {
        case 2...11:
            return 0
        case 12:
            return 4/13
        case 13:
            return 5/13
        case 14:
            return 6/13
        case 15:
            return 7/13
        case 16:
            return 8/13
        case 17:
            return 9/13
        case 18:
            return 10/13
        case 19:
            return 11/13
        case 20:
            return 12/13
        case 21...:
            return 13/13
        default:
            return 911
        
        }

    }
}
