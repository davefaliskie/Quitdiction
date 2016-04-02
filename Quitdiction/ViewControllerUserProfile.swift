//
//  ViewControllerUserProfile.swift
//  Quitdiction
//
//  Created by Riley Sung on 4/2/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewControllerUserProfile: UIViewController {
    
    let data = NSUserDefaults.standardUserDefaults()
    
    var user = String()
    var myAddiction = String()
    var frequencyString = String()
    
    @IBOutlet var addictionLabel: UILabel!
    @IBOutlet var frequencyLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup() {
        getpageInfo()
        updateLabels()
    }

    func getpageInfo() {
        
        user = data.objectForKey("user") as! String
        myAddiction = data.valueForKey("myAddiction") as! String
        frequencyString = data.valueForKey("frequencyString") as! String
        
    }
    
    func updateLabels() {
        addictionLabel.text = myAddiction
        frequencyLabel.text = frequencyString
    }

}
