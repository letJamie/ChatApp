//
//  ChatViewController.swift
//  ChatApp
//
//  Created by Jamie on 2020/07/19.
//  Copyright © 2020 Jamie. All rights reserved.
//
import UIKit
import Firebase

class ChatViewController: UIViewController {
    
    @IBOutlet weak var tabelView: UITableView!
    
    @IBOutlet weak var messageTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "⚡️FlashChat"
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        
    }
    
    
}
