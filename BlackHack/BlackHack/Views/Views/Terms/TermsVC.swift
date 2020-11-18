//
//  termsVC.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 13/11/2020.
//

import Foundation

import UIKit
import WebKit
import InteractiveSideMenu

class TermsVC : UIViewController, SideMenuItemContent, Storyboardable {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://blackhack.app/termsAndConditions.html")
        
        let myRequest = URLRequest(url: myURL!)
        
        webView.load(myRequest)
        
        
    }
    
    @IBAction func menu(_ sender: Any) {
        showSideMenu()
    }
    
    
}
