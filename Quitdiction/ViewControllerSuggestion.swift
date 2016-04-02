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
        "Go to bed",
        "Cry",
        "Fight someone"
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

