//
//  SupportVC.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 13/11/2020.
//

import Foundation

import UIKit
import MessageUI
import InteractiveSideMenu
import NotificationCenter

class SupportVC : UIViewController, SideMenuItemContent, Storyboardable {
    
    var activeTextView : UITextView? = nil
    
    @IBOutlet weak var belowMessageFieldView: UIView!
    
    @IBOutlet weak var subjectField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    @IBOutlet weak var mailButton: UIButton!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageField.delegate = self
        subjectField.delegate = self
        
        subjectField.layer.cornerRadius = 5
        subjectField.layer.borderColor = UIColor.systemGray4.cgColor
        subjectField.layer.borderWidth = 1
        subjectField.returnKeyType = .next
        
        
        messageField.textColor = .systemGray4
        messageField.layer.cornerRadius = 5
        messageField.layer.borderColor = UIColor.systemGray4.cgColor
        messageField.layer.borderWidth = 1
        messageField.text = "Write your message here"
        messageField.returnKeyType = .done
        
        mailButton.layer.cornerRadius = 5
        
        // correr keyboardWillShow cada vez que se va a abrir el teclado
        NotificationCenter.default.addObserver(self, selector: #selector(SupportVC.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(SupportVC.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @IBAction func menuAction(_ sender: Any) {
        showSideMenu()
    }
    
    @IBAction func mailAction(_ sender: Any) {
        mail()
    }
    
    //  gradient background
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        greenGradientLayer()
    }
    
    
}



extension SupportVC : UITextViewDelegate {
    
    //  Quitar placeholder al editar
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == .systemGray4 {
            textView.text = nil
            textView.textColor = .white
        }
    }
    
    //  Agregar placeholder si esta vacío
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Write your message here"
            textView.textColor = .systemGray4
        }
        activeTextView = nil
    }
    
    //  Ocultar teclado al tocar en el boton Done
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        activeTextView = textView
        return true
    }
    
}



extension SupportVC : UITextFieldDelegate {
    
    //  Pasar al mensaje al tocar Siguiente
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == subjectField {
            messageField.becomeFirstResponder()
        }
        return true
    }
    
}


// Mover view al abrir o cerrar teclado

extension SupportVC {
    
    @objc func keyboardWillShow(notification: NSNotification) {

      guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {

        // if keyboard size is not available for some reason, dont do anything
        return
      }

      var shouldMoveViewUp = false

      // if active text field is not nil
      if activeTextView == messageField {

        let bottomOfTextView = belowMessageFieldView.convert(activeTextView!.bounds, to: self.view).maxY;
        
        let topOfKeyboard = self.view.frame.height - keyboardSize.height

        // if the bottom of Textfield is below the top of keyboard, move up
        if bottomOfTextView > topOfKeyboard {
          shouldMoveViewUp = true
        }
      }

      if shouldMoveViewUp {
        self.view.frame.origin.y = 0 - (keyboardSize.height * 0.7)
      }
}



    // Volver a posición original al cerrar el tecladoc
    @objc func keyboardWillHide(notifiation: NSNotification) {
        self.view.frame.origin.y = 0
    }
    
}












//  Envío de mail

extension SupportVC : MFMailComposeViewControllerDelegate {
    
    func mail() {
        
        if MFMailComposeViewController.canSendMail() {
            
            let mail = MFMailComposeViewController()
            
            mail.mailComposeDelegate = self
            mail.setToRecipients(["support@blackhack.app"])
            
            let subject = subjectField.text
            let message = messageField.text
            
            if let text = subject, !text.isEmpty {
                mail.setSubject(text)
            } else {
                okAlert(title: "Subject empty", message: "You must write a subject")
            }
            
            if messageField.textColor != .systemGray4, !messageField.text.isEmpty {
                mail.setMessageBody(message!, isHTML: false)
            } else {
                okAlert(title: "Message empty", message: "You must write a message")
            }
            
            if subject != nil && messageField.textColor != .systemGray4 && !messageField.text.isEmpty {
                if !messageField.text.isEmpty {
                    self.present(mail, animated: true, completion: nil)
                }
                
            }
            
        }
        
    }
    
}
