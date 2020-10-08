//
//  source.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 07/10/2020.
//

import Foundation

//
//  cartas.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 06/10/2020.
//

import Foundation

public enum Status {
    case playingClear
    case playingAmbiguous
    case bust
    case stood
}

public enum Card : Comparable {
    
    //  Posibles códigos del enum
    case two, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    
    //  (Int)   Devuelve el valor de cada carta
    public func value() -> Int {
        switch self {
        case .two: return 2; case .three: return 3; case .four: return 4; case .five: return 5; case .six: return 6; case .seven: return 7; case .eight: return 8; case .nine: return 9; case .ten: return 10; case .jack: return 10; case .queen: return 10; case .king: return 10; case .ace: return 11
        }
    }
    
    public func name() -> String {
        switch self {
        case .two: return "2"; case .three: return "3"; case .four: return "4"; case .five: return "5"; case .six: return "6"; case .seven: return "7"; case .eight: return "8"; case .nine: return "9"; case .ten: return "10"; case .jack: return "J"; case .queen: return "Q"; case .king: return "K"; case .ace: return "A"
        }
    }
    
    //  >: de acuerdo al valor de la carta
    public static func > (aCard: Card, anotherCard: Card) -> Bool {
        return  aCard.value() > anotherCard.value()
    }
    
    //  <: de acuerda al valor de la carta
    public static func < (aCard:Card, anotherCard: Card) -> Bool {
        return aCard.value() < anotherCard.value()
    }
    
}

public class Deck {
    
    //  [Cards] Array de cartas
    public var cards: [Card] = []
    
    //  Int     Suma de valores de cartas
    public var sum: Int = 0
    
    //  Enum    Status: stood, bust, playingClear, playing Ambiguous
    public var status: Status = .playingClear
    

    
    //  -----   FUNCIONES   -------------------------------------------------------
    
    //  (Bool)  Mazo vació
    public func isEmpty() -> Bool {
        return cards.isEmpty
    }
    
    //  (Int)   Cantidad de cartas
    public func amountOfCards() -> Int {
        return cards.count
    }
    
    //  (Bool)  Si tiene una carta por su nombre
    public func has(_ card: Card) -> Bool {
        return cards.contains(card)
    }
    
    //  (Bool)  Si tiene una carta con ese valor (10 cuenta para 10, J, Q, K)
    public func hasByValue(_ value: Int) -> Bool {
        return cards.contains(where: {$0.value() == value})
    }
    
    //  (Bool)  Si tiene un As
    public func hasAce() -> Bool {
        return self.has(.ace)
    }
    
    //  (Bool)  Si tiene cartas con valor 10
    public func hasTens() -> Bool {
        return self.hasByValue(10)
    }
    
    //  (Int)   Cuántas veces está presente una carta por su nombre
    public func amountOf(_ card: Card) -> Int {
        return cards.filter({$0 == card}).count
    }
    
    //  (Int)   Cuántas cartas hay con ese valor (10 cuenta para 10, J, Q, K)
    public func amountOfByValue(_ value: Int) -> Int {
        return cards.filter({$0.value() == value}).count
    }
    
    //  (Int)   Cantidad de ases
    public func amountOfAces() -> Int {
        return self.amountOf(.ace)
    }
    
    //  (Int)   Suma de valores de cartas. Ases como 11
    public func sumNormal() -> Int {
        return cards.map({$0.value()}).reduce(0, +)
    }
    
    //  (Int)   Suma de valores de cartas, ases como 1
    public func sumAcesAs1() -> Int {
        return self.sumNormal() - ( 10 * self.amountOfAces() )
    }
    
    //  (Int)   Suma de valores de cartas. La cantidad amountOfAcesAs1 de Ases cuentan como 1
    public func sumAcesAs1(amountOfAcesAs1 amount: Int) -> Int {
        return self.sumNormal() - 10 * amount
    }
    
    //  (String)    String con las cartas para Label
    public func cardsString() -> String {
        if self.isEmpty() {
            return "Empty"
        } else if self.amountOfCards() == 1 {
            return self.cards.first!.name()
        } else {
            let names = self.cards.map({$0.name()})
            var string = names.first!
            for name in names.dropFirst() {
                string += " - \(name)"
            }
            return string
        }
    }
    
    
    
    //  -----   POSIBLES VALORES    ---------------------------------------------------
    
    //  (Bool)  Si hizo blackjack
    public func blackJack() -> Bool {
        return
            self.amountOfCards() == 2   &&  self.hasAce()   &&  self.hasTens()
    }
    
    //  (Bool)  Si se pasó
    public func bust() -> Bool {
        return
            (!self.hasAce() &&  self.sumNormal() > 21)  ||
            (self.sumAcesAs1() > 21)
    }
    
    
    
    
    //  -----   PROCEDIMIENTOS  -------------------------------------------------------
    
    //  Void    Agregar una carta por su nombre
    public func addCard(_ card: Card) {
        cards.append(card)
    }
    
    //  Void    Borrar una carta por su nombre
    public func deleteCard(_ card: Card) {
        if let index = cards.firstIndex(where: {$0 == card}) {
            let _ = cards.remove(at: index)
        }
    }
    
    //  Void    Borrar todas las cartas
    public func clean() {
        cards.removeAll()
    }
    
    //  Void    Ordenar de menor a mayor (A último)
    public func order() {
        cards.sort()
    }
    
    //  Void    Actualizar sum usando SumNormal (Ases cuentan como 11)
    public func updateSumNormal() {
        sum = self.sumNormal()
    }
    
    
}



public class Croupier: Deck {
    
    //  init publico
    override public init () {}
    
    //  (Bool)  Si se se queda teniendo ases
    public func standsWithAces() -> Bool {
        for index in 0...amountOfAces() {
            if (17...21).contains(self.sumAcesAs1(amountOfAcesAs1: index)) {
                return true
            }
        }
        return false
    }
    
    //  (Bool)  Si se queda
    public func stood() -> Bool {
        return
            (17...21).contains(self.sumNormal()) ||
            self.standsWithAces()
    }
    
    public func oddsOfBusting() -> Double {
        
        if (17...21).contains(sum) {
            return 0
        }
        
        if (22...).contains(sum) {
            return 1
        }
        
        if self.hasAce(){
            
            switch self.cards {
                
                case [.ace]:
                    return 206611487610 / 1792160394037
                case [.five, .ace]:
                    return 1709274 / 4826809
                case [.four, .ace]:
                    return 20531077 / 62748517
                case [.three, .ace]:
                    return 244679261 / 815730721
                case [.two, .ace]:
                    return 2889676733 / 10604499373
                case [.ace, .ace]:
                    return 33769544089 / 137858491849
                default:
                    return 911
            }
            
        } else {
            
            switch sum {
            
                case 16:
                    return 8 / 13
                case 15:
                    return 99 / 169
                case 14:
                    return 1217 / 2197
                case 13:
                    return 14841 / 28561
                case 12:
                    return 179213 / 371293
                case 11:
                    return 1023810 / 4826809
                case 10:
                    return 1023810 / 4826809
                case 9:
                    return 14333340 / 62748517
                case 8:
                    return 15357150 / 62748517
                case 7:
                    return 213976290 / 815730721
                case 6:
                    return 345176856 / 815730721
                case 5:
                    return 4415752453 / 10604499373
                case 4:
                    return 4183140383 / 10604499373
                case 3:
                    return 51541827839 / 137858491849
                case 2:
                    return 48747884389 / 137858491849
                default:
                    return 911
            }
        }
    }
    
    
    public func oddsOfStanding() -> Double {
        
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
}






public class User: Deck {
    
    public func oddsOfBustingNextHit() -> Double {
        
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
    
    
    public func oddsOfNotBustingNextHit() -> Double {
        
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
