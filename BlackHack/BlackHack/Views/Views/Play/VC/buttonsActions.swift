//
//  buttonsActions.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation
import InteractiveSideMenu
import FirebaseAnalytics

//  Buttons actions

extension PlayViewController {
    
    
    
    
    
    @IBAction func resetButtonAction(_ sender: Any) {
        game.reset()
        updateDealerAndUser()
        Analytics.logEvent("Reset", parameters: ["a":"a"])
    }
    
    @IBAction func menuButtonAction(_ sender: Any) {
        
        showSideMenu()
        
    }
    
    
    
    
    
    @IBAction func dealerAddA(_ sender: Any) {
        game.dealerAdd(.ace)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAdd2(_ sender: Any) {
        game.dealerAdd(.two)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAdd3(_ sender: Any) {
        game.dealerAdd(.three)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAdd4(_ sender: Any) {
        game.dealerAdd(.four)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAdd5(_ sender: Any) {
        game.dealerAdd(.five)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAdd6(_ sender: Any) {
        game.dealerAdd(.six)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAdd7(_ sender: Any) {
        game.dealerAdd(.seven)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAdd8(_ sender: Any) {
        game.dealerAdd(.eight)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAdd9(_ sender: Any) {
        game.dealerAdd(.nine)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAdd10(_ sender: Any) {
        game.dealerAdd(.ten)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAddJ(_ sender: Any) {
        game.dealerAdd(.jack)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAddQ(_ sender: Any) {
        game.dealerAdd(.queen)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerAddK(_ sender: Any) {
        game.dealerAdd(.king)
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerClean(_ sender: Any) {
        game.dealerClean()
        updateDealer()
        checkStrategy()
    }
    @IBAction func dealerUndo(_ sender: Any) {
        game.dealerUndo()
        updateDealer()
        checkStrategy()
    }
    
    
    
    
    
    @IBAction func userAddA(_ sender: Any) {
        game.userAdd(.ace)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAdd2(_ sender: Any) {
        game.userAdd(.two)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAdd3(_ sender: Any) {
        game.userAdd(.three)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAdd4(_ sender: Any) {
        game.userAdd(.four)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAdd5(_ sender: Any) {
        game.userAdd(.five)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAdd6(_ sender: Any) {
        game.userAdd(.six)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAdd7(_ sender: Any) {
        game.userAdd(.seven)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAdd8(_ sender: Any) {
        game.userAdd(.eight)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAdd9(_ sender: Any) {
        game.userAdd(.nine)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAdd10(_ sender: Any) {
        game.userAdd(.ten)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAddJ(_ sender: Any) {
        game.userAdd(.jack)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAddQ(_ sender: Any) {
        game.userAdd(.queen)
        updateUser()
        checkStrategy()
    }
    @IBAction func userAddK(_ sender: Any) {
        game.userAdd(.king)
        updateUser()
        checkStrategy()
    }
    @IBAction func userClean(_ sender: Any) {
        game.userClean()
        updateUser()
        checkStrategy()
    }
    @IBAction func userUndo(_ sender: Any) {
        game.userUndo()
        updateUser()
        checkStrategy()
    }
    
    
    
    
}
