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
        
        
        
    }

    
    @IBAction func userAButtonAction(_ sender: Any) {
        user.addCard(.ace)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func user2ButtonAction(_ sender: Any) {
        user.addCard(.two)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func user3ButtonAction(_ sender: Any) {
        user.addCard(.three)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func user4ButtonAction(_ sender: Any) {
        user.addCard(.four)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func user5ButtonAction(_ sender: Any) {
        user.addCard(.five)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func user6ButtonAction(_ sender: Any) {
        user.addCard(.six)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func user7ButtonAction(_ sender: Any) {
        user.addCard(.seven)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func user8ButtonAction(_ sender: Any) {
        user.addCard(.eight)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func user9ButtonAction(_ sender: Any) {
        user.addCard(.nine)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func user10ButtonAction(_ sender: Any) {
        user.addCard(.ten)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func userJButtonAction(_ sender: Any) {
        user.addCard(.jack)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func userQButtonAction(_ sender: Any) {
        user.addCard(.queen)
        userCardsLabel.text = user.cardsString()
    }
    @IBAction func userKButtonAction(_ sender: Any) {
        user.addCard(.ace)
        userCardsLabel.text = user.cardsString()
    }
    
    
    
    
    
    
    
    
    
}

extension ViewController {
    
    
    
}
