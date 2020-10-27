//
//  oddsGettingMoreAses.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension User {
    
    func oddsHittingMoreHavingAces() -> Double {
        
        if hasAce() {
            
            if sum.type == .soft {
                
                switch sum.value {
                    case 2:
                        return 9/13
                    case 3:
                        return 8/13
                    case 4:
                        return 7/13
                    case 5:
                        return 6/13
                    case 6:
                        return 5/13
                    case 7:
                        return 4/13
                    case 8:
                        return 3/13
                    case 9:
                        return 2/13
                    case 10:
                        return 1/13
                    case 11:
                        return 0/13
                    default:
                        return 911
                }
                
            }
            
        }
     
        return 911

    }
    
}
