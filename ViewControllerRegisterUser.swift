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
    var birthday = NSDate()
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var userNameTextField: UITextField!
  
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func registerUser() {
        
    }


}
