//
//  ChatViewController.swift
//  ChatApp
//
//  Created by Jamie on 2020/07/19.
//  Copyright © 2020 Jamie. All rights reserved.
//
import UIKit
class ChatViewController: UIViewController {

    @IBOutlet weak var tabelView: UITableView!
    
    @IBOutlet weak var messageTextfield: UITextField!
    
    
    override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
     }
    
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
}
