//
//  cardOpperations.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 08/10/2020.
//

import Foundation

extension Deck {
    
    //  Void    Agregar una carta por su nombre
    func add(_ card: Card) {
        cards.append(card)
    }

//    //  Void    Borrar una carta por su nombre
//    func remove(_ card: Card) {
//        if let index = cards.firstIndex(where: {$0 == card}) {
//            cards.remove(at: index)
//        }
//    }

    //  Void    Borrar todas las cartas
    func clean() {
        cards.removeAll()
    }
    
    //  Void    Si tiene al menos una carta, borrar la última agregada
    func undo() {
        if !isEmpty() {
            cards.removeLast()
        }
    }

}
