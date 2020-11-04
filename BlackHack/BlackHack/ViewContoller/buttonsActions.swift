//
//  buttonsActions.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 03/11/2020.
//

import Foundation

//  Buttons actions

extension ViewController {
    
    @IBAction func dealerAddA(_ sender: Any) {
        game.dealerAdd(.ace)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAdd2(_ sender: Any) {
        game.dealerAdd(.two)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAdd3(_ sender: Any) {
        game.dealerAdd(.three)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAdd4(_ sender: Any) {
        game.dealerAdd(.four)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAdd5(_ sender: Any) {
        game.dealerAdd(.five)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAdd6(_ sender: Any) {
        game.dealerAdd(.six)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAdd7(_ sender: Any) {
        game.dealerAdd(.seven)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAdd8(_ sender: Any) {
        game.dealerAdd(.eight)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAdd9(_ sender: Any) {
        game.dealerAdd(.nine)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAdd10(_ sender: Any) {
        game.dealerAdd(.ten)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAddJ(_ sender: Any) {
        game.dealerAdd(.jack)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAddQ(_ sender: Any) {
        game.dealerAdd(.queen)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerAddK(_ sender: Any) {
        game.dealerAdd(.king)
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerClean(_ sender: Any) {
        game.dealerClean()
        updateDealer()
        updateStrategy()
    }
    @IBAction func dealerUndo(_ sender: Any) {
        game.dealerUndo()
        updateDealer()
        updateStrategy()
    }
    
    
    
    
    @IBAction func userAddA(_ sender: Any) {
        game.userAdd(.ace)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAdd2(_ sender: Any) {
        game.userAdd(.two)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAdd3(_ sender: Any) {
        game.userAdd(.three)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAdd4(_ sender: Any) {
        game.userAdd(.four)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAdd5(_ sender: Any) {
        game.userAdd(.five)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAdd6(_ sender: Any) {
        game.userAdd(.six)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAdd7(_ sender: Any) {
        game.userAdd(.seven)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAdd8(_ sender: Any) {
        game.userAdd(.eight)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAdd9(_ sender: Any) {
        game.userAdd(.nine)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAdd10(_ sender: Any) {
        game.userAdd(.ten)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAddJ(_ sender: Any) {
        game.userAdd(.jack)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAddQ(_ sender: Any) {
        game.userAdd(.queen)
        updateUser()
        updateStrategy()
    }
    @IBAction func userAddK(_ sender: Any) {
        game.userAdd(.king)
        updateUser()
        updateStrategy()
    }
    @IBAction func userClean(_ sender: Any) {
        game.userClean()
        updateUser()
        updateStrategy()
    }
    @IBAction func userUndo(_ sender: Any) {
        game.userUndo()
        updateUser()
        updateStrategy()
    }
    
    
}
