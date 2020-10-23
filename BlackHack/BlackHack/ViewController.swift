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
    
    let croupier    =   Croupier()
    let user        =   User()
    
    var croupierCardsButtons: [UIButton] = []
    var userCardsButtons: [UIButton] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        croupierCardsButtons = [croupierA, croupier2, croupier3, croupier4, croupier5, croupier6, croupier7, croupier8, croupier9, croupier10, croupierJ, croupierQ, croupierK]
        
        userCardsButtons = [userA, user2, user3, user4, user5, user6, user7, user8, user9, user10, userJ, userQ, userK]
        
        
        updateUserView()
        
    }
    
    
    @IBAction func croupierAddA(_ sender: Any) {
        croupier.add(.ace)
        updateCroupier()
    }
    @IBAction func croupierAdd2(_ sender: Any) {
        croupier.add(.two)
        updateCroupier()
    }
    @IBAction func croupierAdd3(_ sender: Any) {
        croupier.add(.three)
        updateCroupier()
    }
    @IBAction func croupierAdd4(_ sender: Any) {
        croupier.add(.four)
        updateCroupier()
    }
    @IBAction func croupierAdd5(_ sender: Any) {
        croupier.add(.five)
        updateCroupier()
    }
    @IBAction func croupierAdd6(_ sender: Any) {
        croupier.add(.six)
        updateCroupier()
    }
    @IBAction func croupierAdd7(_ sender: Any) {
        croupier.add(.seven)
        updateCroupier()
    }
    @IBAction func croupierAdd8(_ sender: Any) {
        croupier.add(.eight)
        updateCroupier()
    }
    @IBAction func croupierAdd9(_ sender: Any) {
        croupier.add(.nine)
        updateCroupier()
    }
    @IBAction func croupierAdd10(_ sender: Any) {
        croupier.add(.ten)
        updateCroupier()
    }
    @IBAction func croupierAddJ(_ sender: Any) {
        croupier.add(.jack)
        updateCroupier()
    }
    @IBAction func croupierAddQ(_ sender: Any) {
        croupier.add(.queen)
        updateCroupier()
    }
    @IBAction func croupierAddK(_ sender: Any) {
        croupier.add(.king)
        updateCroupier()
    }
    @IBAction func croupierClean(_ sender: Any) {
        croupier.clean()
        updateCroupier()
    }
    @IBAction func croupierBack(_ sender: Any) {
        croupier.back()
        updateCroupier()
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func userAddA(_ sender: Any) {
        user.add(.ace)
        updateUser()
    }
    @IBAction func userAdd2(_ sender: Any) {
        user.add(.two)
        updateUser()
    }
    @IBAction func userAdd3(_ sender: Any) {
        user.add(.three)
        updateUser()
    }
    @IBAction func userAdd4(_ sender: Any) {
        user.add(.four)
        updateUser()
    }
    @IBAction func userAdd5(_ sender: Any) {
        user.add(.five)
        updateUser()
    }
    @IBAction func userAdd6(_ sender: Any) {
        user.add(.six)
        updateUser()
    }
    @IBAction func userAdd7(_ sender: Any) {
        user.add(.seven)
        updateUser()
    }
    @IBAction func userAdd8(_ sender: Any) {
        user.add(.eight)
        updateUser()
    }
    @IBAction func userAdd9(_ sender: Any) {
        user.add(.nine)
        updateUser()
    }
    @IBAction func userAdd10(_ sender: Any) {
        user.add(.ten)
        updateUser()
    }
    @IBAction func userAddJ(_ sender: Any) {
        user.add(.jack)
        updateUser()
    }
    @IBAction func userAddQ(_ sender: Any) {
        user.add(.queen)
        updateUser()
    }
    @IBAction func userAddK(_ sender: Any) {
        user.add(.king)
        updateUser()
    }
    @IBAction func userClean(_ sender: Any) {
        user.clean()
        updateUser()
    }
    @IBAction func userBack(_ sender: Any) {
        user.back()
        updateUser()
    }
    
    
}




// Update view elements

extension ViewController {
    
    func updateCroupier() {
        croupier.update()
        updateCroupierView()
    }
    
    func updateCroupierView() {
        croupierSumLabel.text       = croupier.sumCroupierString()
        croupierStatusLabel.text    = croupier.statusString()
        croupierCardsLabel.text     = croupier.cardsString()
        croupierOddsBLabel.text     = croupier.oddsOfBustingString()
        croupierOddsSLabel.text     = croupier.oddsOfStandingString()
        updateCroupierButtons()
    }
    
    func updateUser() {
        user.update()
        updateUserView()
    }
    
    func updateUserView() {
        userSumLabel.text       = user.sumString()
        userStatusLabel.text    = user.statusString()
        userCardsLabel.text     = user.cardsString()
        userOddsBLabel.text     = user.oddsOfBustingString()
        userOddsNBLabel.text    = user.oddsOfNotBustingString()
        updateUserButtons()
    }
    
}



// Buttons behaviour

extension ViewController {
    
    func shouldEnableCroupierButtons() -> Bool {
        return          ( croupierA.isEnabled == false &&
                    (croupier.status == .empty || croupier.status == .playing) )
    }
    
    func shouldDisableCroupierButtons() -> Bool {
        return          ( croupierA.isEnabled == true &&
                        (croupier.status == .bust || croupier.status == .stood) )
    }
    
    
    func shouldEnableUserButtons() -> Bool {
        return          ( userA.isEnabled == false &&
                        (user.status == .empty || user.status == .playing) )
    }
    
    func shouldDisableUserButtons() -> Bool {
        return          (userA.isEnabled == true &&
                        user.status == .bust)
    }
    
    
    func updateCroupierButtons() {
        if shouldEnableCroupierButtons() {
            croupierCardsButtons.forEach({$0.isEnabled = true; $0.alpha = 1})
        }
        if shouldDisableCroupierButtons() {
            croupierCardsButtons.forEach({$0.isEnabled = false; $0.alpha = 0.6})
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
