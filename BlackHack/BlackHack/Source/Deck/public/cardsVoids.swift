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
