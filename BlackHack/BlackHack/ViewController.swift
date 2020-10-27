//
//  ViewController.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 06/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var croupierLabel: UILabel!
    
    @IBOutlet weak var croupierA: UIButton!
    @IBOutlet weak var croupier2: UIButton!
    @IBOutlet weak var croupier3: UIButton!
    @IBOutlet weak var croupier4: UIButton!
    @IBOutlet weak var croupier5: UIButton!
    @IBOutlet weak var croupier6: UIButton!
    @IBOutlet weak var croupier7: UIButton!
    @IBOutlet weak var croupier8: UIButton!
    @IBOutlet weak var croupier9: UIButton!
    @IBOutlet weak var croupier10: UIButton!
    @IBOutlet weak var croupierJ: UIButton!
    @IBOutlet weak var croupierQ: UIButton!
    @IBOutlet weak var croupierK: UIButton!
    @IBOutlet weak var croupierClean: UIButton!
    @IBOutlet weak var croupierBack: UIButton!
    
    @IBOutlet weak var croupierCardsLabel: UILabel!
    @IBOutlet weak var croupierSumLabel: UILabel!
    @IBOutlet weak var croupierStatusLabel: UILabel!
    @IBOutlet weak var croupierOddsBLabel: UILabel!
    @IBOutlet weak var croupierOddsSLabel: UILabel!

    
    
    @IBOutlet weak var userLabel: UILabel!
    
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
    @IBOutlet weak var userBack: UIButton!
    
    @IBOutlet weak var userCardsLabel: UILabel!
    @IBOutlet weak var userSumLabel: UILabel!
    @IBOutlet weak var userStatusLabel: UILabel!
    @IBOutlet weak var userOddsBLabel: UILabel!
    @IBOutlet weak var userOddsNBLabel: UILabel!
    
    @IBOutlet weak var strategyView: UIView!
    @IBOutlet weak var strategyLabel: UILabel!
    
    
    
    let game    =   Game()
    
    var dealerCardsButtons: [UIButton] = []
    var userCardsButtons: [UIButton] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dealerCardsButtons = [croupierA, croupier2, croupier3, croupier4, croupier5, croupier6, croupier7, croupier8, croupier9, croupier10, croupierJ, croupierQ, croupierK]
        
        userCardsButtons = [userA, user2, user3, user4, user5, user6, user7, user8, user9, user10, userJ, userQ, userK]
        
        
        updateUserView()
        updateDealerView()
        updateStrategy()
        
        
    }
    
    

    
    @IBAction func croupierAddA(_ sender: Any) {
        game.dealerAdd(.ace)
        updateDealer()
    }
    @IBAction func croupierAdd2(_ sender: Any) {
        game.dealerAdd(.two)
        updateDealer()
    }
    @IBAction func croupierAdd3(_ sender: Any) {
        game.dealerAdd(.three)
        updateDealer()
    }
    @IBAction func croupierAdd4(_ sender: Any) {
        game.dealerAdd(.four)
        updateDealer()
    }
    @IBAction func croupierAdd5(_ sender: Any) {
        game.dealerAdd(.five)
        updateDealer()
    }
    @IBAction func croupierAdd6(_ sender: Any) {
        game.dealerAdd(.six)
        updateDealer()
    }
    @IBAction func croupierAdd7(_ sender: Any) {
        game.dealerAdd(.seven)
        updateDealer()
    }
    @IBAction func croupierAdd8(_ sender: Any) {
        game.dealerAdd(.eight)
        updateDealer()
    }
    @IBAction func croupierAdd9(_ sender: Any) {
        game.dealerAdd(.nine)
        updateDealer()
    }
    @IBAction func croupierAdd10(_ sender: Any) {
        game.dealerAdd(.ten)
        updateDealer()
    }
    @IBAction func croupierAddJ(_ sender: Any) {
        game.dealerAdd(.jack)
        updateDealer()
    }
    @IBAction func croupierAddQ(_ sender: Any) {
        game.dealerAdd(.queen)
        updateDealer()
    }
    @IBAction func croupierAddK(_ sender: Any) {
        game.dealerAdd(.king)
        updateDealer()
    }
    @IBAction func croupierClean(_ sender: Any) {
        game.dealerClean()
        updateDealer()
    }
    @IBAction func croupierBack(_ sender: Any) {
        game.dealerBack()
        updateDealer()
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func userAddA(_ sender: Any) {
        game.userAdd(.ace)
        updateUser()
    }
    @IBAction func userAdd2(_ sender: Any) {
        game.userAdd(.two)
        updateUser()
    }
    @IBAction func userAdd3(_ sender: Any) {
        game.userAdd(.three)
        updateUser()
    }
    @IBAction func userAdd4(_ sender: Any) {
        game.userAdd(.four)
        updateUser()
    }
    @IBAction func userAdd5(_ sender: Any) {
        game.userAdd(.five)
        updateUser()
    }
    @IBAction func userAdd6(_ sender: Any) {
        game.userAdd(.six)
        updateUser()
    }
    @IBAction func userAdd7(_ sender: Any) {
        game.userAdd(.seven)
        updateUser()
    }
    @IBAction func userAdd8(_ sender: Any) {
        game.userAdd(.eight)
        updateUser()
    }
    @IBAction func userAdd9(_ sender: Any) {
        game.userAdd(.nine)
        updateUser()
    }
    @IBAction func userAdd10(_ sender: Any) {
        game.userAdd(.ten)
        updateUser()
    }
    @IBAction func userAddJ(_ sender: Any) {
        game.userAdd(.jack)
        updateUser()
    }
    @IBAction func userAddQ(_ sender: Any) {
        game.userAdd(.queen)
        updateUser()
    }
    @IBAction func userAddK(_ sender: Any) {
        game.userAdd(.king)
        updateUser()
    }
    @IBAction func userClean(_ sender: Any) {
        game.userClean()
        updateUser()
    }
    @IBAction func userBack(_ sender: Any) {
        game.userBack()
        updateUser()
    }
    
    
}




// Update view elements

extension ViewController {
    
    func updateDealer() {
        game.dealerUpdate()
        updateDealerView()
        updateStrategy()
    }
    
    func updateDealerView() {
        let info = game.dealerData()
        croupierSumLabel.text       = info.sum
        croupierStatusLabel.text    = info.status
        croupierCardsLabel.text     = info.cards
        croupierOddsBLabel.text     = info.oddsNegative
        croupierOddsSLabel.text     = info.oddsPositive
        updateDealerButtons()
    }
    
    func updateUser() {
        game.userUpdate()
        updateUserView()
        updateStrategy()
    }
    
    func updateUserView() {
        let info = game.userData()
        userSumLabel.text       = info.sum
        userStatusLabel.text    = info.status
        userCardsLabel.text     = info.cards
        userOddsBLabel.text     = info.cards
        userOddsNBLabel.text    = info.oddsPositive
        updateUserButtons()
    }
    
    
    func updateStrategy() {
        if let strategy = game.strategyString() {
            strategyLabel.text = strategy
            strategyView.isHidden = false
        } else {
            strategyView.isHidden = true
        }
    }
    
}



// Buttons behaviour

extension ViewController {
    
    func shouldEnableDealerButtons() -> Bool {
        return          ( !croupierA.isEnabled &&
                            (game.dealerStatusEmpty() || game.dealerStatusPlaying() ))
    }
    
    func shouldDisableDealerButtons() -> Bool {
        return          ( croupierA.isEnabled &&
                            (game.dealerStatusBust() || game.dealerStatusStood()) )
    }
    
    
    func shouldEnableUserButtons() -> Bool {
        return          ( !userA.isEnabled &&
                            (game.userStatusEmpty() || game.userStatusPlaying()) )
    }
    
    func shouldDisableUserButtons() -> Bool {
        return          (userA.isEnabled &&
                            (game.userStatusBust() || game.userStatusStood()))
    }
    
    
    func updateDealerButtons() {
        if shouldEnableDealerButtons() {
            dealerCardsButtons.forEach({$0.isEnabled = true; $0.alpha = 1})
        }
        if shouldDisableDealerButtons() {
            dealerCardsButtons.forEach({$0.isEnabled = false; $0.alpha = 0.6})
        }
    }
    
    func updateUserButtons() {
        if shouldEnableUserButtons() {
            userCardsButtons.forEach({$0.isEnabled = true; $0.alpha = 1})
        }
        if shouldDisableUserButtons() {
            userCardsButtons.forEach({$0.isEnabled = false; $0.alpha = 0.6})
        }
    }
    
}
