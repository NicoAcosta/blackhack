//
//  ViewController.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 06/10/2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userAButton: UIButton!
    @IBOutlet weak var user2Button: UIButton!
    @IBOutlet weak var user3Button: UIButton!
    @IBOutlet weak var user4Button: UIButton!
    @IBOutlet weak var user5Button: UIButton!
    @IBOutlet weak var user6Button: UIButton!
    @IBOutlet weak var user7Button: UIButton!
    @IBOutlet weak var user8Button: UIButton!
    @IBOutlet weak var user9Button: UIButton!
    @IBOutlet weak var user10Button: UIButton!
    @IBOutlet weak var userJButton: UIButton!
    
    @IBOutlet weak var userQButton: UIButton!
    
    @IBOutlet weak var userKButton: UIButton!
    
    @IBOutlet weak var userCardsLabel: UILabel!
    @IBOutlet weak var userSumLabel: UILabel!
    @IBOutlet weak var userOddsBustingLabel: UILabel!
    @IBOutlet weak var userOddsNotBustingLabel: UILabel!
    @IBOutlet weak var userCleanButton: UIButton!
    @IBOutlet weak var userBackButton: UIButton!
    
    
    
    @IBOutlet weak var croupierAButton: UIButton!
    @IBOutlet weak var croupier2Button: UIButton!
    @IBOutlet weak var croupier3Button: UIButton!
    @IBOutlet weak var croupier4Button: UIButton!
    @IBOutlet weak var croupier5Button: UIButton!
    @IBOutlet weak var croupier6Button: UIButton!
    @IBOutlet weak var croupier7Button: UIButton!
    @IBOutlet weak var croupier8Button: UIButton!
    @IBOutlet weak var croupier9Button: UIButton!
    @IBOutlet weak var croupier10Button: UIButton!
    @IBOutlet weak var croupierJButton: UIButton!
    @IBOutlet weak var croupierQButton: UIButton!
    @IBOutlet weak var croupierKButton: UIButton!
    
    @IBOutlet weak var croupierCardsLabel: UILabel!
    
    var croupier    =   Croupier()
    var user        =   User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        userSumLabel.text = String(user.sum)
        
        
    }

    
    func updateUserView() {
        user.update()
        //userSumLabel.text = sumString()
        userCardsLabel.text = user.cardsString()
        //userOddsBustingLabel.text =
        //userOddsNotBustingLabel.text =
    }
    
    @IBAction func userCleanAction(_ sender: Any) {
        user.clean()
    }
    
    //back
    
    @IBAction func userAddA(_ sender: Any) {
        user.addCard(.ace)
        updateUserView()
    }
    @IBAction func userAdd2(_ sender: Any) {
        user.addCard(.two)
        updateUserView()
    }
    @IBAction func userAdd3(_ sender: Any) {
        user.addCard(.three)
        updateUserView()
    }
    @IBAction func userAdd4(_ sender: Any) {
        user.addCard(.four)
        updateUserView()
    }
    @IBAction func userAdd5(_ sender: Any) {
        user.addCard(.five)
        updateUserView()
    }
    @IBAction func userAdd6(_ sender: Any) {
        user.addCard(.six)
        updateUserView()
    }
    @IBAction func userAdd7(_ sender: Any) {
        user.addCard(.seven)
        updateUserView()
    }
    @IBAction func userAdd8(_ sender: Any) {
        user.addCard(.eight)
        updateUserView()
    }
    @IBAction func userAdd9(_ sender: Any) {
        user.addCard(.nine)
        updateUserView()
    }
    @IBAction func userAdd10(_ sender: Any) {
        user.addCard(.ten)
        updateUserView()
    }
    @IBAction func userAddJ(_ sender: Any) {
        user.addCard(.jack)
        updateUserView()
    }
    @IBAction func userAddQ(_ sender: Any) {
        user.addCard(.queen)
        updateUserView()
    }
    @IBAction func userAddK(_ sender: Any) {
        user.addCard(.king)
        updateUserView()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


