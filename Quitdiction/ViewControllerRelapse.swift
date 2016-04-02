//
//  ViewControllerRelapse.swift
//  Quitdiction
//
//  Created by David Faliskie on 4/2/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewControllerRelapse: UIViewController {
    
    
    @IBOutlet weak var relapseTextLabel: UILabel!
    
    // all the relapse data
    var relapseData = [
        "Set a timer to track how long you use social networking",
        "Disable your push notifications",
        "Deal with your boredom some other way!",
        "Stop following the trends and become an individual",
        "Think before you type!",
        "Enrich your real relationships",
        "Live in the moment",
        "Try a week without electronics",
        "Really express yourself"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomIndex = Int(arc4random_uniform(UInt32(relapseData.count)))
        relapseTextLabel.text = relapseData[randomIndex]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}