//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Bowler, Ryan on 2018-01-19.
//  Copyright © 2018 Bowler, Ryan. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    // MARK: Properties
    var numberToGuess : Int
    var numbersGuessed : [Int] // This is an array
    
    // MARK: Initializer
    init() {
        numberToGuess = Int(arc4random_uniform(501)) // Generate number between 1 and 500
        
        // Make an empty list of numbers guessed
        numbersGuessed = []
    }
    
    // Check the provided guess to the random number
    mutating func compareGuessMade(providedGuess : Int) -> String {
       
        // Add the provided guess to the random number
        numbersGuessed.append(providedGuess)
        
        // Compare the provided guess to the random number
        if providedGuess < numberToGuess {
            return "Guess Higher!"
        } else if providedGuess > numberToGuess {
            return "Guess Lower!"
        } else {
            return "Yay! You Guessed It!"
        }
    
    }
    
}
