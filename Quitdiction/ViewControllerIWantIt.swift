//
//  ViewControllerIWantIt.swift
//  Quitdiction
//
//  Created by Riley Sung on 4/2/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewControllerIWantIt: UIViewController {

    @IBOutlet var imCravingTitleLabel: UILabel!
    
    @IBOutlet var whatDoIDoButton: UIButton!
    @IBOutlet var iDidItButton: UIButton!
    
    var helpAddictionViaSegway = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewSetup()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewSetup() {
        
        whatDoIDoButton.layer.masksToBounds = true;
        whatDoIDoButton.layer.cornerRadius = 59.5;
        
        iDidItButton.layer.masksToBounds = true;
        iDidItButton.layer.cornerRadius = 59.5;
        
        imCravingTitleLabel.text = "Help! - I Want To \(helpAddictionViaSegway)!"
        
    }
    
}