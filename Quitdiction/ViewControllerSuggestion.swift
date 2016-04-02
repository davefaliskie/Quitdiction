//
//  ViewControllerSuggestion.swift
//  Quitdiction
//
//  Created by David Faliskie on 4/2/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewControllerSuggestion: UIViewController {
    
    @IBOutlet weak var suggestionLabel: UILabel!
    @IBAction func noWayButton(sender: AnyObject) {
        generateSuggestion()
    }
   
    // all the suggestions
    var suggestionData = [
        "Go for a run",
        "Go for a jog",
        "Read a book",
        "Go for a hike",
        "Go for a walk",
        "Play a boardgame",
        "Call a friend",
        "Call a relative",
        "Take a nap",
        "Go to the gym",
        "Go to the spa",
        "Play with a pet",
        "Stop and smell the flowers",
        "Count the clocks",
        "Say hi to the person next to you",
        "Stretch",
        "Meditate",
        "Scream"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomIndex = Int(arc4random_uniform(UInt32(suggestionData.count)))
        suggestionLabel.text = suggestionData[randomIndex]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func generateSuggestion() {
        let randomIndex = Int(arc4random_uniform(UInt32(suggestionData.count)))
        suggestionLabel.text = suggestionData[randomIndex]

    }
}

