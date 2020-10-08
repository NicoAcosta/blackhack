//
//  user.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation


class User: Deck {
    
    func update() {
        cards.sort()
        self.updateSumNormal()
    }
    
    
    func oddsOfBustingNextHit() -> Double {
        
        if self.hasAce() && self.amountOfCards() <= 2 {
            return 0
        
        } else {
            
            switch self.sumAcesAs1() {
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
                    return 1
                default:
                    return 911
            }
        }
    }
    
    
    func oddsOfNotBustingNextHit() -> Double {
        
        if self.hasAce() && self.amountOfCards() <= 2 {
            return 1
        
        } else {
            
            switch self.sumAcesAs1() {
                case 2...11:
                    return 1
                case 12:
                    return 9/13
                case 13:
                    return 8/13
                case 14:
                    return 7/13
                case 15:
                    return 6/13
                case 16:
                    return 5/13
                case 17:
                    return 4/13
                case 18:
                    return 3/13
                case 19:
                    return 2/13
                case 20:
                    return 1/13
                case 21...:
                    return 0
                default:
                    return 911
            }
        }
    }
    
    
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
