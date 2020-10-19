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

    //  Void    Borrar una carta por su nombre
    func remove(_ card: Card) {
        if let index = cards.firstIndex(where: {$0 == card}) {
            cards.remove(at: index)
        }
    }
    
    func removeLast() {
        cards.removeLast()
    }

    //  Void    Borrar todas las cartas
    func clean() {
        cards.removeAll()
    }

    //  Void    Ordenar de menor a mayor (A último)
    func order() {
        cards.sort()
    }
    
    func back() {
        if !isEmpty() {
            cards.removeLast()
        }
    }

}
