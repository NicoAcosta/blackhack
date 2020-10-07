//
//  cartas.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 06/10/2020.
//

import Foundation


class Card {
    
    let name: String
    let value: Int
    
    init(name aName: String!, value aValue: Int!) {
        name = aName
        value = aValue
    }
    
}


enum SumType {
    case clear
    case ambiguousHasA
}

enum CardCode {
    case 
}

class Deck {
    
    //  -----   PROPIEDADES ------
    
    //  Card    Crea la instancia de Card para cada carta
    let card2   =   Card (name: "2",    value: 2)
    let card3   =   Card (name: "3",    value: 3)
    let card4   =   Card (name: "4",    value: 4)
    let card5   =   Card (name: "5",    value: 5)
    let card6   =   Card (name: "6",    value: 6)
    let card7   =   Card (name: "7",    value: 7)
    let card8   =   Card (name: "8",    value: 8)
    let card9   =   Card (name: "9",    value: 9)
    let card10  =   Card (name: "10",   value: 10)
    let cardJ   =   Card (name: "J",    value: 10)
    let cardQ   =   Card (name: "Q",    value: 10)
    let cardK   =   Card (name: "K",    value: 10)
    let cardA   =   Card (name: "A",    value: 11)
    let cardError   =   Card (name: "E", value: 0)
    
    //  [Card]   Contiene las cartas que tiene
    var cards: [Card] = []
    
    var sum: Int = 0

    var sumType = SumType.clear
    
    public init () {}
    
    
}






//  -----   FUNCIONES   -----
extension Deck {
    
    //  (Bool)  Mazo vació
    func isEmpty() -> Bool {
        return cards.isEmpty
    }
    
    //  (Int)   Cantidad de cartas
    func amountOfCards() -> Int {
        return cards.count
    }
    
    //  (Bool)  Si tiene una carta por su nombre
    func occurrenceByName(_ name: String) -> Bool {
        return cards.contains(where: {$0 === cardByName(name)})
    }
    
    //  (Bool)  Si tiene una carta con ese valor (10 cuenta para 10, J, Q, K)
    func occurrenceByValue(_ value: Int) -> Bool {
        return cards.contains(where: {$0.value == value})
    }
    
    //  (Bool)  Si tiene un As
    func hasA() -> Bool {
        return self.occurrenceByName("A")
    }
    
    //  (Int)   Cuántas veces está presente una carta por su nombre
    func repetitionsByName(_ name: String) -> Int {
        return cards.filter({$0 === cardByName(name)}).count
    }
    
    //  (Int)   Cuántas cartas hay con ese valor (10 cuenta para 10, J, Q, K)
    func repetitionsByValue(_ value: Int) -> Int {
        return cards.filter({$0.value == value}).count
    }
    
    func sumNormal() -> Int {
        return cards.map({$0.value}).reduce(0, +)
    }
    
    func sumAAs1(howManyA: Int) {
        
    

    
}





//  -----   PROCEDIMIENTOS  -----
extension Deck {
    
    //  Void    Agregar una carta por su nombre
    func addCardByName(_ name: String) {
        cards.append(cardByName(name))
    }
    
    //  Void    Borrar una carta por su nombre
    func deleteCardByName(_ name: String) {
        if let index = cards.firstIndex(where: {$0 === cardByName(name)}) {
            let _ = cards.remove(at: index)
        }
    }
    
    //  Void    Borrar todas las cartas
    func clean() {
        cards.removeAll()
    }
    
    //  Void    Ordenar de menor a mayor (A último)
    func order() {
        cards.sort(by: {$0.value < $1.value})
    }
    
    func updateSumNormal() {
        sum = self.sumNormal()
    }
    
}




extension Deck {

    //  (Card)  Obtener la referencia a una carta a partir de su nombre
    func cardByName(_ name: String) -> Card {
        switch name {
        case "2":
            return card2
        case "3":
            return card3
        case "4":
            return card4
        case "5":
            return card5
        case "6":
            return card6
        case "7":
            return card7
        case "8":
            return card8
        case "9":
            return card9
        case "10":
            return card10
        case "J":
            return cardJ
        case "Q":
            return cardQ
        case "K":
            return cardK
        case "A":
            return cardA
        default:
            return cardError
        }
    }
}






























public class Croupier: Deck {
    
    func updateSum() {
        self.order()
        
        if !self.hasA() {                       //  no tiene As
            
            self.updateSumNormal()
            sumType = .clear
            
        } else if self.sumNormal() <= 21 {      // tiene al menos un As pero suma <= 21
                self.updateSumNormal()
                sumType = .clear
        
        
        } else if ( self.repetitionsByName("A") == 1 )  &&  
        
            
            
            
        }
    
    }
    
    
    
}













