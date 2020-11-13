//
//  strategies.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 27/10/2020.
//

import Foundation

extension Game {
    
    
    
    
    
    //  (Bool)  Si debe calcular una estrategia.
    //          Esto es si el usuario no se queda (menos de 21), y si dealer tiene solo una carta y user 2 o más
    
    internal func hasStrategy() -> Bool {
        if user.stands() {
            return false
        }
        return
            dealer.amountOfCards()  ==  1   &&
            user.amountOfCards()    >=  2
    }
    
    
    
    
    
    //  (Strategy)  Si debe tener una, calcula la estrategia.
    //              Si no tiene, devuelve nil
    
    internal var strategy : Strategy? {
        
        if hasStrategy() {
            
            if user.pair() {
                return pairsStrategy()
            }
            if user.isHandType(.soft) {
                return softTotalsStrategy()
            }
                return hardTotalsStrategy()
            
        }
        
        return nil
        
    }
    
    
    
    
    
    //  (String)    Devuele el string de la strategy calculada, o nil si no tiene.
    
    internal func strategyString() -> String? {
        
        if let aStrategy = strategy {
            return aStrategy.string
        }
        
        return nil
    }
    
}





extension Game {
    
    //  Estrategia en caso de no ser un par
    
    internal func strategyNoPairs(hit hitHandValues: [Int]?, double doubleHandValues: [Int]?, stand standHandValues: [Int]?) -> Strategy? {
        
        let sum = user.sumValue()
        
        if let values = hitHandValues,      values.contains(sum) {
            return .hit
        }
        if let values = standHandValues,    values.contains(sum) {
            return .stand
        }
        if let values = doubleHandValues,   values.contains(sum) {
            return .double
        }
        return nil
        
    }
    
    
    
    
    
    //  En caso de tener un par, devuelve si separar; o en caso de no separar, quedarse, doblar o pedir
    
    internal func strategyPairs(hit hitPairs: [Int]?, double doublePairs: [Int]?, stand standPairs: [Int]?, split splitPairs: [Int]?) -> Strategy? {
        
        let sum = user.firstCardValue()!
        
        if let values = hitPairs,       values.contains(sum) {
            return .hit
        }
        if let values = standPairs,     values.contains(sum) {
            return .stand
        }
        if let values = doublePairs,    values.contains(sum) {
            return .double
        }
        if let values = splitPairs,     values.contains(sum) {
            return .split
        }
        return nil
        
    }
    
}





extension Game {
    
    
    //  Strategy para cuando tiene mano hard
    
    internal func hardTotalsStrategy() -> Strategy? {
        
        switch dealer.firstCard()! {
        
        case .two:
            return strategyNoPairs      (hit: Array(5...9) + [12],            double: [10, 11],       stand: Array(13...21))
        case .three:
            return strategyNoPairs      (hit: Array(5...8) + [12],            double: Array(9...11),  stand: Array(13...21))
        case .four, .five, .six:
            return strategyNoPairs      (hit: Array(5...8),                   double: Array(9...11),  stand: Array(12...21))
        case .seven, .eight, .nine:
            return strategyNoPairs      (hit: Array(5...9) + Array(12...16),  double: [10, 11],       stand: Array(17...21))
        case .ten, .jack, .queen, .king, .ace:
            return strategyNoPairs      (hit: Array(5...10) + Array(12...16), double: [11],           stand: Array(17...21))
        }
        
    }
    
    
    
    //  Strategy para cuando tiene mano soft
    
    internal func softTotalsStrategy() -> Strategy? {
        
        switch dealer.firstCard()! {
        
        case .two:
            return strategyNoPairs      (hit: Array(3...6),     double: [7],            stand: Array(8...10))
        case .three:
            return strategyNoPairs      (hit: Array(3...6),     double: [7, 8],         stand: [9, 10])
        case .four, .five:
            return strategyNoPairs      (hit: nil,              double: Array(3...8),   stand: [9, 10])
        case .six:
            return strategyNoPairs      (hit: nil,              double: Array(3...9),   stand: [10])
        case .seven, .eight, .ace:
            return strategyNoPairs      (hit: Array(3...7),     double: nil,            stand: Array(8...10))
        case .nine, .ten, .jack, .queen, .king:
            return strategyNoPairs      (hit: Array(3...8),     double: nil,            stand: [9, 10])
            
        }
        
    }
    
    
    //  Strategy para cuando tiene un par
    
    internal func pairsStrategy() -> Strategy? {
        
        switch dealer.firstCard()! {
        
        case .two:
            return strategyPairs        (hit: [2, 3, 4],            double: [5],        stand: [10],            split: [6, 7, 8, 9, 11])
        case .three:
            return strategyPairs        (hit: [3, 4],               double: [5],        stand: [10],            split: [2, 6, 7, 8, 9, 11])
        case .four:
            return strategyPairs        (hit: [4],                  double: [5],        stand: [10],            split: [2, 3, 6, 7, 8, 9, 11])
        case .five, .six:
            return strategyPairs        (hit: nil,                  double: [4, 5],     stand: [10],            split: [2, 3, 6, 7, 8, 9, 11])
        case .seven:
            return strategyPairs        (hit: [4, 6],               double: [5],        stand: [9, 10],         split: [2, 3, 7, 8, 11])
        case .eight, .nine:
            return strategyPairs        (hit: [2, 3, 4, 6, 7],      double: [5],        stand: [10],            split: [8, 9, 11])
        case .ten, .jack, .queen, .king:
            return strategyPairs        (hit: [2, 3, 4, 5, 6],      double: nil,        stand: [7, 9, 10],      split: [8, 11])
        case .ace:
            return strategyPairs        (hit: [2, 3, 4, 5, 6, 7],   double: nil,        stand: [9, 10],         split: [8, 11])
        }
        
    }
    
    
}
