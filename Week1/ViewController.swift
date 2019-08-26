//
//  ViewController.swift
//  Week1
//
//  Created by Carter Borchetta on 8/26/19.
//  Copyright © 2019 Carter Borchetta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🤑viewDidLoad has executed!")
        
    }

    @IBAction func sayItButtonPressed(_ sender: UIButton) {
        print("👌🏾You clicked the say it button")
        messageLabel.text = "You Are Not Awesome!"
    }
    
}

