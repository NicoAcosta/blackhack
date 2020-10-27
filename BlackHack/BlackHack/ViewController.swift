//
//  ViewController.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 06/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    //  Dealer
    
    @IBOutlet weak var dealerA: UIButton!
    @IBOutlet weak var dealer2: UIButton!
    @IBOutlet weak var dealer3: UIButton!
    @IBOutlet weak var dealer4: UIButton!
    @IBOutlet weak var dealer5: UIButton!
    @IBOutlet weak var dealer6: UIButton!
    @IBOutlet weak var dealer7: UIButton!
    @IBOutlet weak var dealer8: UIButton!
    @IBOutlet weak var dealer9: UIButton!
    @IBOutlet weak var dealer10: UIButton!
    @IBOutlet weak var dealerJ: UIButton!
    @IBOutlet weak var dealerQ: UIButton!
    @IBOutlet weak var dealerK: UIButton!
    @IBOutlet weak var dealerClean: UIButton!
    @IBOutlet weak var dealerUndo: UIButton!
    
    @IBOutlet weak var dealerCardsLabel: UILabel!
    
    @IBOutlet weak var dealerSumLabel: UILabel!
    @IBOutlet weak var dealerStatusLabel: UILabel!
    @IBOutlet weak var dealerOddsBLabel: UILabel!
    @IBOutlet weak var dealerOddsSLabel: UILabel!
    
    
    
    
    
    //  User

    @IBOutlet weak var userA: UIButton!
    @IBOutlet weak var user2: UIButton!
    @IBOutlet weak var user3: UIButton!
    @IBOutlet weak var user4: UIButton!
    @IBOutlet weak var user5: UIButton!
    @IBOutlet weak var user6: UIButton!
    @IBOutlet weak var user7: UIButton!
    @IBOutlet weak var user8: UIButton!
    @IBOutlet weak var user9: UIButton!
    @IBOutlet weak var user10: UIButton!
    @IBOutlet weak var userJ: UIButton!
    @IBOutlet weak var userQ: UIButton!
    @IBOutlet weak var userK: UIButton!
    @IBOutlet weak var userClean: UIButton!
    @IBOutlet weak var userUndo: UIButton!
    
    @IBOutlet weak var userCardsLabel: UILabel!
    
    @IBOutlet weak var userSumLabel: UILabel!
    @IBOutlet weak var userStatusLabel: UILabel!
    @IBOutlet weak var userOddsBLabel: UILabel!
    @IBOutlet weak var userOddsNBLabel: UILabel!
    
    
    
    
    
    //  Strategy
    
    @IBOutlet weak var strategyView: UIView!
    @IBOutlet weak var strategyLabel: UILabel!
    
    
    
    
    
    //  Logic
    
    var dealerCardsButtons: [UIButton] = []
    var userCardsButtons: [UIButton] = []
    
    let game    =   Game()
    
    
    
    
    
    //  viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dealerCardsButtons = [dealerA, dealer2, dealer3, dealer4, dealer5, dealer6, dealer7, dealer8, dealer9, dealer10, dealerJ, dealerQ, dealerK]
        
        userCardsButtons = [userA, user2, user3, user4, user5, user6, user7, user8, user9, user10, userJ, userQ, userK]
        
        updateAll()
        
    }
    
}





// Update view elements

extension ViewController {
    
    func updateAll() {
        updateUser()
        updateDealer()
    }
    
    func updateDealer() {
        game.dealerUpdate()
        updateDealerInfo()
        updateDealerButtons()
        updateStrategy()
    }
    
    func updateUser() {
        game.userUpdate()
        updateUserInfo()
        updateUserButtons()
        updateStrategy()
    }
    
}





//  Info

extension ViewController {
    
    func updateDealerInfo() {
        let info = game.dealerData()
        dealerSumLabel.text       = info.sum
        dealerStatusLabel.text    = info.status
        dealerCardsLabel.text     = info.cards
        dealerOddsBLabel.text     = info.oddsNegative
        dealerOddsSLabel.text     = info.oddsPositive
    }
    
    func updateUserInfo() {
        let info = game.userData()
        userSumLabel.text       = info.sum
        userStatusLabel.text    = info.status
        userCardsLabel.text     = info.cards
        userOddsBLabel.text     = info.oddsNegative
        userOddsNBLabel.text    = info.oddsPositive
    }
    
}





//  Buttons behaviour

extension ViewController {
    
    func updateDealerButtons() {
        
        if game.dealerStatusStood() || game.dealerStatusBust() {
            if dealerA.isEnabled {
                dealerCardsButtons.forEach({$0.isEnabled = false; $0.alpha = 0.6})
            }
        }
        else if !dealerA.isEnabled {
                dealerCardsButtons.forEach({$0.isEnabled = true; $0.alpha = 1})
        }
        
        if game.dealerStatusEmpty() {
            if dealerClean.isEnabled {
                dealerClean.isEnabled = false
                dealerUndo.isEnabled = false
            }
        } else if !dealerClean.isEnabled {
            dealerClean.isEnabled = true
            dealerUndo.isEnabled = true
        }

    }
    
    func updateUserButtons() {
        
        if game.userStatusStood() || game.userStatusBust() {
            if userA.isEnabled {
                userCardsButtons.forEach({$0.isEnabled = false; $0.alpha = 0.6})
            }
        }
        else if !userA.isEnabled {
            userCardsButtons.forEach({$0.isEnabled = true; $0.alpha = 1})
        }
        
        if game.userStatusEmpty() {
            if userClean.isEnabled {
                userClean.isEnabled = false
                userUndo.isEnabled = false
            }
        } else if !userClean.isEnabled {
            userClean.isEnabled = true
            userUndo.isEnabled = true
        }

    }
    
}





//  Strategy behaviour

extension ViewController {
    
    func updateStrategy() {
        if let strategy = game.strategyString() {
            strategyLabel.text = strategy
            strategyView.isHidden = false
        } else {
            strategyView.isHidden = true
        }
    }
    
}
