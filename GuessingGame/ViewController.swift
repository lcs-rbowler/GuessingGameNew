//
//  ViewController.swift
//  GuessingGame
//
//  Created by Bowler, Ryan on 2018-01-13.
//  Copyright © 2018 Bowler, Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldGuess: UITextField!
    
    // MARK: Properties (variables)
    var game = GuessingGame()
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    @IBAction func guessSubmitted(_ sender: Any) {
        
        // Print the guess that was given
        print(textFieldGuess.text)
        
        // Unrap the textfields contents
        // (Makeing sure the textfield
        // is not a nil value)
        
        guard let inputGiven = textFieldGuess.text else {
            // If we could not unrap
            // the optional then quit
            // this function.
            return
        }
        
        // Make sure the value is an integer
        // (Handle cases where user enters text)
        // e.g. five
        guard let guessProvided = Int(inputGiven) else {
            // If we can't convert to an integer
            // then quit and return
            return
        }
        
        // Print the actual number that was given
        print(guessProvided)
        
        // Compare the guess to the number
        labelMessage.text = game.compareGuessMade(providedGuess: guessProvided)
        
    }
    
    // MARK: Custom Functions
    
}

