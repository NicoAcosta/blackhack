//
//  oddsB.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Dealer {
    
    internal func oddsOfBusting() -> Double {
        
        if isEmpty() {
            return 6560574127830 / 23298085122481
        }
        
        if isSoft() {
            
            switch sum.value {
            case 1:
                return 206611487610 / 1792160394037
            case 2:
                return 33769544089 / 137858491849
            case 3:
                return 2889676733 / 10604499373
            case 4:
                return 244679261 / 815730721
            case 5:
                return 20531077 / 62748517
            case 6:
                return 1709274 / 4826809
            case 7...11:
                return 0
            default:
                return 911
            }
        
        } else {
            
            switch sum.value {
            case 2:
                return 48747884389 / 137858491849
            case 3:
                return 51541827839 / 137858491849
            case 4:
                return 4183140383 / 10604499373
            case 5:
                return 4415752453 / 10604499373
            case 6:
                return 345176856 / 815730721
            case 7:
                return 213976290 / 815730721
            case 8:
                return 15357150 / 62748517
            case 9:
                return 14333340 / 62748517
            case 10:
                return 1023810 / 4826809
            case 11:
                return 1023810 / 4826809
            case 12:
                return 179213 / 371293
            case 13:
                return 14841 / 28561
            case 14:
                return 1217 / 2197
            case 15:
                return 99 / 169
            case 16:
                return 8 / 13
            case 17...21:
                return 0
            case 22...:
                return 1
            default:
                return 911
            }
            
            
        }
    }
}
