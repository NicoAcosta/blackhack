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
        game.dealerUpdate()
        updateDealerData()
        checkDealerButtonsBehaviour()
    }
    
    
    
    //  Actualizar data y view de user
    
    func updateUser() {
        game.userUpdate()
        updateUserData()
        checkUserButtonsBehaviour()
    }
    
    
    
    //  Mostrar y actualizar strategy si corresponde
    
    func checkStrategy() {
        if let strategy = game.strategyString() {
            strategyLabel.text  =   strategy
            strategyView.show()
        } else {
            strategyView.hide()
        }
    }
    
}
