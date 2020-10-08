//
//  oddsGettingMoreAses.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension User {
    
    func oddsHittingMoreHavingAces() -> Double {
        
        if self.hasAce() {
            
            if self.amountOfCards() == 2 {
                
                switch self.cards {
                    case [.ace, .ace]:
                        return 9/13
                    case [.two, .ace]:
                        return 8/13
                    case [.three, .ace]:
                        return 7/13
                    case [.four, .ace]:
                        return 6/13
                    case [.five, .ace]:
                        return 5/13
                    case [.six, .ace]:
                        return 4/13
                    case [.seven, .ace]:
                        return 3/13
                    case [.eight, .ace]:
                        return 2/13
                    case [.nine, .ace]:
                        return 1/13
                    case [.ten, .ace]:
                        return 0/13
                    case [.jack, .ace]:
                        return 0/13
                    case [.queen, .ace]:
                        return 0/13
                    case [.king, .ace]:
                        return 0/13
                    default:
                        return 911
                }
                
            }
            
        }
     
        return 911

    }
    
}
