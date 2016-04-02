//
//  ViewController.swift
//  Quitdiction
//
//  Created by David Faliskie on 4/1/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var alertLabel: UILabel!
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        if verifyUserName() && verifyPassword() == true {
            performSegueWithIdentifier("goToWhatIsYourAddiction", sender: nil)
        } else {
            alertLabel.text = "Sorry! Something went wrong"
            hideAlertLabelAfterTime()
        }
    }
    
    var data = NSUserDefaults.standardUserDefaults()
    var user = NSDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup() {
        alertLabel.hidden = true
        if user["password"] as? String != nil {
            user = (data.objectForKey("user") as? NSDictionary)!
        }
    }
    
    func verifyUserName() -> Bool {
        if let userName = userNameTextField.text as String? {
            if userName == "" {
                return false
            } else {
                if userName == user["userName"] as! String! {
                    return true
                }
            }
        } else {
            alertLabel.text = "Sorry! Could not find Username"
            hideAlertLabelAfterTime()
            return false
        }
        
        return false
    }
    
    func verifyPassword() -> Bool {
        if let password = passwordTextField.text as String? {
            if password == "" {
                return false
            } else {
                if password == user["password"] as! String!{
                    return true
                } else {
                    alertLabel.text = "Sorry! Incorrect password"
                    hideAlertLabelAfterTime()
                    return false
                }
            }
        }
        return false
    }
    
    func hideAlertLabelAfterTime() {
        alertLabel.hidden = false
        let time = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 3 * Int64(NSEC_PER_SEC))
        dispatch_after(time, dispatch_get_main_queue()) {
            self.alertLabel.hidden = true
        }
    }
   

}

