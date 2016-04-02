//
//  ViewControllerRegisterUser.swift
//  Quitdiction
//
//  Created by Riley Sung on 4/1/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewControllerRegisterUser: UIViewController {
    
    var firstName = String()
    var LastName = String()
    var userName = String()
    var selectedGender = String()
    var birthday = String()
    var user = ["firstName":"null","lastName":"null","userName":"null","password":"null","gender":"null","birthday":"null"]
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var alertLabel: UILabel!
  
    @IBOutlet var genderSegmentControl: UISegmentedControl!
    @IBAction func genderSegmentControlIndexChanged(sender: AnyObject) {
        switch genderSegmentControl.selectedSegmentIndex {
            case 0:
                selectedGender = "Male"
            case 1:
                selectedGender = "Female"
            default:
                break;
        }
    }
    
   
    @IBOutlet var birthdayDatePicker: UIDatePicker!
    
    @IBAction func registerButton(sender: AnyObject) {
        registerUser()
    }
    
    let data = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertLabel.hidden = true
        
        birthdayDatePicker.addTarget(self, action: #selector(ViewControllerRegisterUser.datePickerChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func datePickerChanged(datePicker:UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MMMM d, yyyy"
        
        birthday = dateFormatter.stringFromDate(datePicker.date)
        
    }
    
    func registerUser() {
        if verifyCredentials() == true {
            data.setObject(user, forKey: "user")
            performSegueWithIdentifier("goToWhatIsYourAddictionView", sender: nil)
        } else {
            alertLabel.text = "Sorry! Something went wrong"
            hideAlertLabelAfterTime()
        }
    }
    
    func verifyCredentials() -> Bool {
        if let first = firstNameTextField.text as String? {
            
            if first != "" {
                user["firstName"] = first
            } else {
                alertLabel.text = "Please enter your first name"
                hideAlertLabelAfterTime()
                return false
            }
        }
        
        if let last = lastNameTextField.text as String? {
            
            if last != "" {
                user["lastName"] = last
            } else {
                alertLabel.text = "Please enter your last name"
                hideAlertLabelAfterTime()
                return false
            }
        }
        
        if let usersName = userNameTextField.text as String? {
            
            if usersName != "" {
                user["userName"] = usersName
            } else {
                alertLabel.text = "Please enter your user name"
                hideAlertLabelAfterTime()
                return false
            }
        }
        
        if let password = passwordTextField.text as String? {
            
            if password != "" {
                user["password"] = password
            } else {
                alertLabel.text = "Please enter your password"
                hideAlertLabelAfterTime()
                return false
            }
        }
        
        if let gender = selectedGender as String? {
            
            if gender != "" {
                user["gender"] = gender
            } else {
                alertLabel.text = "Please select your gender"
                hideAlertLabelAfterTime()
                return false
            }
        }
        
        if let birthdate = birthday as String? {
            
            if birthdate != "" {
                print("birth:", birthdate)
                user["birthday"] = birthdate
            } else {
                alertLabel.text = "Please select your birthday"
                hideAlertLabelAfterTime()
                return false
            }
        }
        
        return true
    }
    
    func hideAlertLabelAfterTime() {
        alertLabel.hidden = false
        let time = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 3 * Int64(NSEC_PER_SEC))
        dispatch_after(time, dispatch_get_main_queue()) {
            self.alertLabel.hidden = true
        }
    }
}
