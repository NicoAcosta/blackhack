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
        game.dealer.add(.ace)
        updateDealer()
    }
    @IBAction func croupierAdd2(_ sender: Any) {
        game.dealer.add(.two)
        updateDealer()
    }
    @IBAction func croupierAdd3(_ sender: Any) {
        game.dealer.add(.three)
        updateDealer()
    }
    @IBAction func croupierAdd4(_ sender: Any) {
        game.dealer.add(.four)
        updateDealer()
    }
    @IBAction func croupierAdd5(_ sender: Any) {
        game.dealer.add(.five)
        updateDealer()
    }
    @IBAction func croupierAdd6(_ sender: Any) {
        game.dealer.add(.six)
        updateDealer()
    }
    @IBAction func croupierAdd7(_ sender: Any) {
        game.dealer.add(.seven)
        updateDealer()
    }
    @IBAction func croupierAdd8(_ sender: Any) {
        game.dealer.add(.eight)
        updateDealer()
    }
    @IBAction func croupierAdd9(_ sender: Any) {
        game.dealer.add(.nine)
        updateDealer()
    }
    @IBAction func croupierAdd10(_ sender: Any) {
        game.dealer.add(.ten)
        updateDealer()
    }
    @IBAction func croupierAddJ(_ sender: Any) {
        game.dealer.add(.jack)
        updateDealer()
    }
    @IBAction func croupierAddQ(_ sender: Any) {
        game.dealer.add(.queen)
        updateDealer()
    }
    @IBAction func croupierAddK(_ sender: Any) {
        game.dealer.add(.king)
        updateDealer()
    }
    @IBAction func croupierClean(_ sender: Any) {
        game.dealer.clean()
        updateDealer()
    }
    @IBAction func croupierBack(_ sender: Any) {
        game.dealer.back()
        updateDealer()
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func userAddA(_ sender: Any) {
        game.user.add(.ace)
        updateUser()
    }
    @IBAction func userAdd2(_ sender: Any) {
        game.user.add(.two)
        updateUser()
    }
    @IBAction func userAdd3(_ sender: Any) {
        game.user.add(.three)
        updateUser()
    }
    @IBAction func userAdd4(_ sender: Any) {
        game.user.add(.four)
        updateUser()
    }
    @IBAction func userAdd5(_ sender: Any) {
        game.user.add(.five)
        updateUser()
    }
    @IBAction func userAdd6(_ sender: Any) {
        game.user.add(.six)
        updateUser()
    }
    @IBAction func userAdd7(_ sender: Any) {
        game.user.add(.seven)
        updateUser()
    }
    @IBAction func userAdd8(_ sender: Any) {
        game.user.add(.eight)
        updateUser()
    }
    @IBAction func userAdd9(_ sender: Any) {
        game.user.add(.nine)
        updateUser()
    }
    @IBAction func userAdd10(_ sender: Any) {
        game.user.add(.ten)
        updateUser()
    }
    @IBAction func userAddJ(_ sender: Any) {
        game.user.add(.jack)
        updateUser()
    }
    @IBAction func userAddQ(_ sender: Any) {
        game.user.add(.queen)
        updateUser()
    }
    @IBAction func userAddK(_ sender: Any) {
        game.user.add(.king)
        updateUser()
    }
    @IBAction func userClean(_ sender: Any) {
        game.user.clean()
        updateUser()
    }
    @IBAction func userBack(_ sender: Any) {
        game.user.back()
        updateUser()
    }
    
    
}




// Update view elements

extension ViewController {
    
    func updateDealer() {
        game.dealer.update()
        updateDealerView()
        updateStrategy()
    }
    
    func updateDealerView() {
        croupierSumLabel.text       = game.dealer.sumDealerString()
        croupierStatusLabel.text    = game.dealer.status.string()
        croupierCardsLabel.text     = game.dealer.cardsString()
        croupierOddsBLabel.text     = game.dealer.oddsOfBustingString()
        croupierOddsSLabel.text     = game.dealer.oddsOfStandingString()
        updateDealerButtons()
    }
    
    func updateUser() {
        game.user.update()
        updateUserView()
        updateStrategy()
    }
    
    func updateUserView() {
        userSumLabel.text       = game.user.sumString()
        userStatusLabel.text    = game.user.status.string()
        userCardsLabel.text     = game.user.cardsString()
        userOddsBLabel.text     = game.user.oddsOfBustingString()
        userOddsNBLabel.text    = game.user.oddsOfNotBustingString()
        updateUserButtons()
    }
    
    
    func updateStrategy() {
        if game.hasStrategy() {
            strategyLabel.text = game.strategy().string()
            strategyView.isHidden = false
        } else {
            strategyView.isHidden = true
        }
    }
    
}



// Buttons behaviour

extension ViewController {
    
    func shouldEnableDealerButtons() -> Bool {
        return          ( croupierA.isEnabled == false &&
                            (game.dealer.status == .empty || game.dealer.status == .playing) )
    }
    
    func shouldDisableDealerButtons() -> Bool {
        return          ( croupierA.isEnabled == true &&
                            (game.dealer.status == .bust || game.dealer.status == .stood) )
    }
    
    
    func shouldEnableUserButtons() -> Bool {
        return          ( userA.isEnabled == false &&
                            (game.user.status == .empty || game.user.status == .playing) )
    }
    
    func shouldDisableUserButtons() -> Bool {
        return          (userA.isEnabled == true &&
                            (game.user.status == .bust || game.user.status == .stood))
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
