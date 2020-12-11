//
//  updateData.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation

// Update view elements

extension PlayViewController {
    
    func updateDealerAndUser() {
        updateUser()
        updateDealer()
        checkStrategy()
    }
    
    
    //  Actualizar data y view de dealer
    
    func updateDealer() {
        updateDealerData()
        checkDealerButtonsBehaviour()
    }
    
    
    
    //  Actualizar data y view de user
    
    func updateUser() {
        updateUserData()
        checkUserButtonsBehaviour()
    }
    
    
    
    //  Mostrar y actualizar strategy si corresponde
    
    func checkStrategy() {
        if let strategy = game.strategyString() {
            strategyLabel.text  =   strategy
            strategyView.show()
        } else {
            strategyLabel.text = "-"
            strategyView.hide()
        }
    }
    
}
