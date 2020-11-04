//
//  userStringFormatting.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 04/11/2020.
//

import Foundation

extension User {
    
    internal func oddsOfBustingString() -> String {
        return oddsOfBustingNextHit().intPercentage
    }
    
    internal func oddsOfNotBustingString() -> String {
        return oddsOfNotBustingNextHit().intPercentage
    }
    
}
