//
//  ViewControllerIWantIt.swift
//  Quitdiction
//
//  Created by Riley Sung on 4/2/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewControllerIWantIt: UIViewController {
    
    let data = NSUserDefaults.standardUserDefaults()

    @IBOutlet var imCravingTitleLabel: UILabel!
    
    @IBOutlet var whatDoIDoButton: UIButton!
    @IBOutlet var iDidItButton: UIButton!
    
    var myAddiction = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewSetup()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewSetup() {
        
        myAddiction = data.valueForKey("myAddiction") as! String
        
        whatDoIDoButton.layer.masksToBounds = true;
        whatDoIDoButton.layer.cornerRadius = 59.5;
        
        iDidItButton.layer.masksToBounds = true;
        iDidItButton.layer.cornerRadius = 59.5;
        
        setTitle()
        
    }
    
    func setTitle() {
        switch myAddiction {
        //                case "Social Media": destination.addictionViaSegway = "Use " + myTopicLabel.text!
        case "Food": imCravingTitleLabel.text = "Help! I want to Eat " + myAddiction
        case "Drugs": imCravingTitleLabel.text = "Help! I want to Take " + myAddiction
        case "TV": imCravingTitleLabel.text = "Help! I want to Watch " + myAddiction
        case "Sex": imCravingTitleLabel.text = "Help! I want to Have " + myAddiction
        case "Gambling": imCravingTitleLabel.text = "Help! I want to Go " + myAddiction
        case "Video Games": imCravingTitleLabel.text = "Help! I want to Play " + myAddiction
        case "Caffeine": imCravingTitleLabel.text = "Help! I want to Consume " + myAddiction
            
        default: imCravingTitleLabel.text = "Help! I want to Use " + myAddiction
        }
    }
    
}