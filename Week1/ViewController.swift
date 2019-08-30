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
        let message1 = "You Are Awesome!"
        let message2 = "You Are Great!"
        let message3 = "You Are Amazing!"
        
        // Dot notation allows you to access the objects attributes
        if messageLabel.text == message1 {
            messageLabel.text = message2
        } else if messageLabel.text == message2 {
            messageLabel.text = message3
        } else {
            messageLabel.text = message1
        }
    }

}

// 2.4 Notes
// If XCode isn't doing code completion you likely have a typo
// Unresolved identifier means XCode doesn't recgonzie what you have written as having been defined
// If you break an IBOutlet connection by just chagning the names, the program will run and then crash
// - You will end up in App Delegate.swift which means there is a broken conncetion between your code and interface builder
// - Can see a broken connection because the circle plug in will be white not black
// - RIght click on View Controller dot and break the connection. Then drag the white dot over to the label to reestablish the connection
// Use Refactor for better renaming
// - This will automatically rename it every place it appears inclduing in Outlet connections

// 2.5 Notes
// XCode autocomplete will you tell you the type of thing you are accessing
// From there you can figure out how to match that type
// We looked at the UIColor type of Labels

// 2.6 Notes
// Conditional Logic(IF)
// Looking at the IF statement
// == is comparison, = is assignment

// 2.7 Notes
// Constants with let
// A value that is unchanging
// Message values only exist in their fucntion or lower
// This is known as scope
// The scope of message values is only within function so they don't exist elsewhere
// XCode won't code complete outside of scope which is awesome
// Pull them out of func for class wide scope
// Why mot define everything classwide?
// - Greater chance of error
// - Clutter, memory managment


