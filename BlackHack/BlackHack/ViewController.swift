//
//  ViewController.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 06/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    //  Dealer
    
    @IBOutlet weak var dealerA:             UIButton!
    @IBOutlet weak var dealer2:             UIButton!
    @IBOutlet weak var dealer3:             UIButton!
    @IBOutlet weak var dealer4:             UIButton!
    @IBOutlet weak var dealer5:             UIButton!
    @IBOutlet weak var dealer6:             UIButton!
    @IBOutlet weak var dealer7:             UIButton!
    @IBOutlet weak var dealer8:             UIButton!
    @IBOutlet weak var dealer9:             UIButton!
    @IBOutlet weak var dealer10:            UIButton!
    @IBOutlet weak var dealerJ:             UIButton!
    @IBOutlet weak var dealerQ:             UIButton!
    @IBOutlet weak var dealerK:             UIButton!
    @IBOutlet weak var dealerClean:         UIButton!
    @IBOutlet weak var dealerUndo:          UIButton!
    
    @IBOutlet weak var dealerCardsLabel:    UILabel!
    
    @IBOutlet weak var dealerSumLabel:      UILabel!
    @IBOutlet weak var dealerStatusLabel:   UILabel!
    @IBOutlet weak var dealerOddsBLabel:    UILabel!
    @IBOutlet weak var dealerOddsSLabel:    UILabel!
    
    
    
    
    
    //  User

    @IBOutlet weak var userA:               UIButton!
    @IBOutlet weak var user2:               UIButton!
    @IBOutlet weak var user3:               UIButton!
    @IBOutlet weak var user4:               UIButton!
    @IBOutlet weak var user5:               UIButton!
    @IBOutlet weak var user6:               UIButton!
    @IBOutlet weak var user7:               UIButton!
    @IBOutlet weak var user8:               UIButton!
    @IBOutlet weak var user9:               UIButton!
    @IBOutlet weak var user10:              UIButton!
    @IBOutlet weak var userJ:               UIButton!
    @IBOutlet weak var userQ:               UIButton!
    @IBOutlet weak var userK:               UIButton!
    @IBOutlet weak var userClean:           UIButton!
    @IBOutlet weak var userUndo:            UIButton!
    
    @IBOutlet weak var userCardsLabel:      UILabel!
    
    @IBOutlet weak var userSumLabel:        UILabel!
    @IBOutlet weak var userStatusLabel:     UILabel!
    @IBOutlet weak var userOddsBLabel:      UILabel!
    @IBOutlet weak var userOddsNBLabel:     UILabel!
    
    
    
    
    
    //  Strategy
    
    @IBOutlet weak var strategyView:        UIView!
    @IBOutlet weak var strategyLabel:       UILabel!
    
    
    
    
    
    //  Logic
    
    var dealerCardsButtons:                 [UIButton]  =  []
    var userCardsButtons:                   [UIButton]  =  []
    
    let game = Game()
    
    
    
    
    
    //  viewDidLoad
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        dealerCardsButtons  =   [dealerA, dealer2, dealer3, dealer4, dealer5, dealer6, dealer7, dealer8, dealer9, dealer10, dealerJ, dealerQ, dealerK]
        
        userCardsButtons    =   [userA, user2, user3, user4, user5, user6, user7, user8, user9, user10, userJ, userQ, userK]
        
        updateAll()
        
    }
    
}





// Update view elements

extension ViewController {
    
    func updateAll() {
        updateUser()
        updateDealer()
        updateStrategy()
    }
    
    func updateDealer() {
        game.dealerUpdate()
        updateDealerInfo()
        updateDealerButtons()
    }
    
    func updateUser() {
        game.userUpdate()
        updateUserInfo()
        updateUserButtons()
    }
    
}





//  Info

extension ViewController {
    
    func updateDealerInfo() {
        let info = game.dealerData()
        dealerSumLabel.text     =   info.sum
        dealerStatusLabel.text  =   info.status
        dealerCardsLabel.text   =   info.cards
        dealerOddsBLabel.text   =   info.oddsNegative
        dealerOddsSLabel.text   =   info.oddsPositive
    }
    
    func updateUserInfo() {
        let info = game.userData()
        userSumLabel.text       =   info.sum
        userStatusLabel.text    =   info.status
        userCardsLabel.text     =   info.cards
        userOddsBLabel.text     =   info.oddsNegative
        userOddsNBLabel.text    =   info.oddsPositive
    }
    
}





//  Buttons behaviour

extension UIButton {
    
    func enable() {
        self.isEnabled  =   true
        self.alpha      =   1
    }
    
    func disable() {
        self.isEnabled  =   false
        self.alpha      =   0.6
    }
    
}

extension ViewController {
    
    func updateDealerButtons() {
        
        if game.dealerStatusStood() || game.dealerStatusBust() {
            if dealerA.isEnabled {
                dealerCardsButtons.forEach({$0.disable()})
            }
        }
        else if !dealerA.isEnabled {
                dealerCardsButtons.forEach({$0.enable()})
        }
        if game.dealerStatusEmpty() {
            if dealerClean.isEnabled {
                dealerClean.disable()
                dealerUndo.disable()
            }
        } else if !dealerClean.isEnabled {
                dealerClean.enable()
                dealerUndo.enable()
        }

    }
    
    func updateUserButtons() {
        
        if game.userStatusStood() || game.userStatusBust() {
            if userA.isEnabled {
                userCardsButtons.forEach({$0.disable()})
            }
        }
        else if !userA.isEnabled {
                userCardsButtons.forEach({$0.enable()})
        }
        
        if game.userStatusEmpty() {
            if userClean.isEnabled {
                userClean.disable()
                userUndo.disable()
                
            }
        } else if !userClean.isEnabled {
                userClean.enable()
                userUndo.enable()
        }

    }
    
}





//  Strategy behaviour

extension UIView {
    
    func hide() {
        self.isHidden = true
    }
    
    func show() {
        self.isHidden = false
    }
    
}

extension ViewController {
    
    func updateStrategy() {
        if let strategy = game.strategyString() {
            strategyLabel.text  =   strategy
            strategyView.show()
        } else {
            strategyView.hide()
        }
    }
    
}





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
