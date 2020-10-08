//
//  oddsOfNotBusting.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

func oddsOfStanding() -> Double {
    
    if (17...21).contains(sum) {
        return 1
    }
    
    if (22...).contains(sum) {
        return 0
    }
    
    if self.hasAce() {
        
        switch self.cards {
            
            case [.ace]:
                return 1585548906427 / 1792160394037
            case [.five, .ace]:
                return 3117535 / 4826809
            case [.four, .ace]:
                return 42217440 / 62748517
            case [.three, .ace]:
                return 571051460 / 815730721
            case [.two, .ace]:
                return 7714822640 / 10604499373
            case [.ace, .ace]:
                return 104088947760 / 137858491849
            default:
                return 911
        }
        
    } else {
        
        switch sum {
        
            case 16:
                return 5 / 13
            case 15:
                return 70 / 169
            case 14:
                return 980 / 2197
            case 13:
                return 13720 / 28561
            case 12:
                return 192080 / 371293
            case 11:
                return 3802999 / 4826809
            case 10:
                return 3802999 / 4826809
            case 9:
                return 48415177 / 62748517
            case 8:
                return 47391367 / 62748517
            case 7:
                return 601754431 / 815730721
            case 6:
                return 470553865 / 815730721
            case 5:
                return 6188746920 / 10604499373
            case 4:
                return 6421358990 / 10604499373
            case 3:
                return 86316664010 / 137858491849
            case 2:
                return 89110607460 / 137858491849
            default:
                return 911
        }
    }
}
