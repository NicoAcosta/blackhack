//
//  game.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 26/10/2020.
//

import Foundation

enum Strategy {
    case hit
    case double
    case split
    case stand
    case error
    
    func string() -> String {
        
        switch self {
        case .stand:
            return "Stand"
        case .hit:
            return "Hit"
        case .double:
            return "Double"
        case .split:
            return "Split"
        case .error:
            return "Error"
        }
        
    }
}


class Game {
    
    let dealer = Dealer()
    let user = User()
    
    func hasStrategy() -> Bool {
        if user.stands() {
            return false
        }
        return
            dealer.amountOfCards() == 1 &&
            user.amountOfCards() >= 2
    }
    
    func strategy() -> Strategy {
        
        if user.pair() {
            return pairsStrategy()
        }
        if user.isSoft() {
            return softTotalsStrategy()
        }
        return hardTotalsStrategy()
        
    }
    

    
}


extension Game {
    
    func strategyNoPairs(hit hitHandValues: [Int]?, double doubleHandValues: [Int]?, stand standHandValues: [Int]?) -> Strategy {
        
        let sum = user.sum.value
        
        if let values = hitHandValues, values.contains(sum) {
            return .hit
        }
        if let values = standHandValues, values.contains(sum) {
            return .stand
        }
        if let values = doubleHandValues, values.contains(sum) {
            return .double
        }
        return .error
        
    }
    
    func strategyPairs(hit hitPairs: [Int]?, double doublePairs: [Int]?, stand standPairs: [Int]?, split splitPairs: [Int]?) -> Strategy {
        
        let sum = user.cards.first!.value()
        
        if let values = hitPairs, values.contains(sum) {
            return .hit
        }
        if let values = standPairs, values.contains(sum) {
            return .stand
        }
        if let values = doublePairs, values.contains(sum) {
            return .double
        }
        if let values = splitPairs, values.contains(sum) {
            return .split
        }
        return .error
        
    }
    
}

extension Game {
    
    func hardTotalsStrategy() -> Strategy {
        
        switch dealer.cards.first! {
        
        case .two:
            return strategyNoPairs(hit: Array(5...9) + [12], double: [10, 11], stand: Array(13...21))
        case .three:
            return strategyNoPairs(hit: Array(5...8) + [12], double: Array(9...11), stand: Array(13...21))
        case .four, .five, .six:
            return strategyNoPairs(hit: Array(5...8), double: Array(9...11), stand: Array(12...21))
        case .seven, .eight, .nine:
            return strategyNoPairs(hit: Array(5...9) + Array(12...16), double: [10, 11], stand: Array(17...21))
        case .ten, .jack, .queen, .king, .ace:
            return strategyNoPairs(hit: Array(5...10) + Array(12...16), double: [11], stand: Array(17...21))
        }
        
    }
    
    func softTotalsStrategy() -> Strategy {
        
        switch dealer.cards.first! {
        
        case .two:
            return strategyNoPairs(hit: Array(3...6), double: [7], stand: Array(8...10))
        case .three:
            return strategyNoPairs(hit: Array(3...6), double: [7, 8], stand: [9, 10])
        case .four, .five:
            return strategyNoPairs(hit: nil, double: Array(3...8), stand: [9, 10])
        case .six:
            return strategyNoPairs(hit: nil, double: Array(3...9), stand: [10])
        case .seven, .eight, .ace:
            return strategyNoPairs(hit: Array(3...7), double: nil, stand: Array(8...10))
        case .nine, .ten, .jack, .queen, .king:
            return strategyNoPairs(hit: Array(3...8), double: nil, stand: [9, 10])
            
        }
        
    }
    
    func pairsStrategy() -> Strategy {
        
        switch dealer.cards.first! {
        
        case .two:
            return strategyPairs(hit: [2, 3, 4], double: [5], stand: [10], split: [6, 7, 8, 9, 11])
        case .three:
            return strategyPairs(hit: [3, 4], double: [5], stand: [10], split: [2, 6, 7, 8, 9, 11])
        case .four:
            return strategyPairs(hit: [4], double: [5], stand: [10], split: [2, 3, 6, 7, 8, 9, 11])
        case .five, .six:
            return strategyPairs(hit: nil, double: [4, 5], stand: [10], split: [2, 3, 6, 7, 8, 9, 11])
        case .seven:
            return strategyPairs(hit: [4, 6], double: [5], stand: [9, 10], split: [2, 3, 7, 8, 11])
        case .eight, .nine:
            return strategyPairs(hit: [2, 3, 4, 6, 7], double: [5], stand: [10], split: [8, 9, 11])
        case .ten, .jack, .queen, .king:
            return strategyPairs(hit: [2, 3, 4, 5, 6], double: nil, stand: [7, 9, 10], split: [8, 10])
        case .ace:
            return strategyPairs(hit: [2, 3, 4, 5, 6, 7], double: nil, stand: [9, 10], split: [8, 10])
        }
        
    }
    
    
    
    
    
}
