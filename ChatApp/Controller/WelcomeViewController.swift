//
//  ViewController.swift
//  ChatApp
//
//  Created by Jamie on 2020/07/19.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit
//import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        titleLabel.text = ""

        var index = 0.0
        let titleText = "⚡️FlashChat"

        for letter in titleText {

            Timer.scheduledTimer(withTimeInterval: index * 0.1, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)

            }
            index += 1
        }
    }
    
    
}

