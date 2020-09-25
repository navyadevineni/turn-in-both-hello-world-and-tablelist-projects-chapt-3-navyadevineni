//
//  ViewController.swift
//  TableList
//
//  Created by student on 9/24/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var meaning:String?
    
    // Function for the button
    @IBAction func showMessage(sender: UIButton) {
        // Declaring the emojis dictionary
        var emojis = ["👾":"Alien Monster",
                      "👻":"Ghost",
                      "🤓":"Nerd Face",
                      "🤖":"Robot Face"]
        
        // Storing the sender in selectedButton constant
        let selectedButton = sender
        
        // Getting the emojis from titleLabel of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text{
            meaning = emojis[wordToLookup];
        }
        
        // Alert Controller code
        let alertController = UIAlertController(title: "Welcome to My First App", message: meaning, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
}




