//
//  ViewController.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 06/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    
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
    
    
    
    
    

    
    var croupier    =   Croupier()
    var user        =   User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUserView()
        
    }

    
    func updateUserView() {
        user.update()
        userSumLabel.text               = user.sumString()
        userSumLabel.text               = user.statusString()
        userCardsLabel.text             = user.cardsString()
        userOddsBLabel.text       = user.oddsOfBustingString()
        userOddsNBLabel.text    = user.oddsOfNotBustingString()
    }
    
    
    
    
    
    
    
    
    
    @IBAction func userAddA(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAdd2(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAdd3(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAdd4(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAdd5(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAdd6(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAdd7(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAdd8(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAdd9(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAdd10(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAddJ(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAddQ(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userAddK(_ sender: Any) {
        user.add(.ace)
        updateUserView()
    }
    @IBAction func userClean(_ sender: Any) {
        user.clean()
        updateUserView()
    }
    @IBAction func userBack(_ sender: Any) {
        user.clean()
        updateUserView()
    }
    
    
    
    
    
    
}


