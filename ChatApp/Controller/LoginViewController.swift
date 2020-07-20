//
//  LoginViewController.swift
//  ChatApp
//
//  Created by Jamie on 2020/07/19.
//  Copyright © 2020 Jamie. All rights reserved.
//
import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            
            Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
                
                if let e = error {
                    print(e)
                    
                } else {
                    
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                    
                }
            }
        }
        
    }
    
}
