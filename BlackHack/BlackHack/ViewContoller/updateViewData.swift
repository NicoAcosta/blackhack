//
//  updateData.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation

// Update view elements

extension ViewController {
    
    func updateBoth() {
        updateUser()
        updateDealer()
        checkStrategy()
    }
    
    func updateDealer() {
        game.dealerUpdate()
        updateDealerData()
        checkDealerButtonsBehaviour()
    }
    
    func updateUser() {
        game.userUpdate()
        updateUserData()
        checkUserButtonsBehaviour()
    }
    
    func checkStrategy() {
        if let strategy = game.strategyString() {
            strategyLabel.text  =   strategy
            strategyView.show()
        } else {
            strategyView.hide()
        }
    }
    
}
