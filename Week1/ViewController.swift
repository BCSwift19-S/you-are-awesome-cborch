//
//  ViewController.swift
//  Week1
//
//  Created by Carter Borchetta on 8/26/19.
//  Copyright © 2019 Carter Borchetta. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var awesomeImageView: UIImageView!
    // Need to name this label so we can control it
    @IBOutlet weak var messageLabel: UILabel!
    // Class wide index var
    var awesomePlayer = AVAudioPlayer()
    // Creates an AVAudioPlayer object. Template for an audio player. This is how an audioplayer looks
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    var soundIndex = -1
    let numberOfSounds = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0..<maxValue)
        } while lastNumber == newNumber
        return newNumber
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        // Can we load in the file soudName?
        if let sound = NSDataAsset(name: soundName) {
            // Now check if sound.data is a sound file(not just checking nil anymore)
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
                //print(soundName)
            } catch {
                // if sound.data is not a valid audio file
                print("Error: data in \(soundName) couldn't be played as a sound")
            }
            
        } else {
            // if reading in the NSDataasset didn't work throw an error
            print("Error: file \(soundName) didn't load")
        }
    }


    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundIndex != -1 {
            awesomePlayer.stop()
        }
    }
    

    // IBAction button
    // This function executes when the button is pressed and released
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genuis Bar needs help, they call you",
                        "You brighten my day!",
                        "You are da bomb!",
                        "Hey, fabulous!",
                        "You are tremendous",
                        "You've got the design skills of Jony Ive!",
                        "I can't wait to download your app!"]

        
        // Shows a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        // Shows an image
        // we are done with newIndex by now so we can reuse it
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        

        if soundSwitch.isOn {
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
            let soundName = "sound\(soundIndex)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
    }

}

// 2.21 and 2.22 Complete

// 2.20
// UI Switch Controller
// Adds a little switch
// 

// 2.19
// Functions with mutable parameters require inout to be specified right before the type and after the colon
// - Use & before the var name in the call to work with the new definition

// 2.18 Notes
// Functions


// 2.17 Notes
// Adding sounds
// Import AVFoundation
// Create AVAudioPLayer Object
// Its like a label you can't see becuase its not on IB
// You have to check if there is data in sound file and that it is read properly
// - Otherwsie its nil and we will throw an error
// - if let sound means it we are able to create this constant then do this, otherwise throw error
// - if let is useful if there is a chance you have nil
// Do Catch Error Checking
// - use keyword try


// 2.16 Notes
// UIView is like a label but has a property of image instead of text

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

// 2.10 Notes
// Class wide scope vars exist and retian stored value anywhere inside the class
// Vars in fucntions are destortyed and recreated each time the functions runs
// Vars in function won't be remembered across calls becuase they are destroyed after the call
// Self refers to things that are defined at the class level(Class wide variables)
// Use po to print out in lldb(line level debug)
// - Like single line playground
// Can use breakpoints and debug area to see the values of variables at frozen point in time
// - Use step over to stept to next line after hitting breakpoint
// Setting lines of label to 0 will dynamicall fit it(in attributes inspector)
// Stuff about debug area

// 2.11 Notes
// Types - Swift is a strongly typed language
// - String, Int, Double
// - Can only combine values of the same type

