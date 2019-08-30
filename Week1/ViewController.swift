//
//  ViewController.swift
//  Week1
//
//  Created by Carter Borchetta on 8/26/19.
//  Copyright © 2019 Carter Borchetta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Need to name this label so we can control it
    @IBOutlet weak var messageLabel: UILabel!
    
    // Happens when the view loads
    // Its a system event that apple provides and is called by iOS
    // iOS sometimes known as event driven programming where there are system events or user actions to trigger functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // IBAction button
    // This function executes when the button is pressed and released
    @IBAction func showMessagePressed(_ sender: UIButton) {
        // Dot notation allows you to access the objects attributes
        messageLabel.text = "You Are Awesome!"
    }
    
    @IBAction func showAnotherMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Great!"
    }
}

