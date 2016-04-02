//
//  ViewControllerWhatIsYourAddiction.swift
//  Quitdiction
//
//  Created by David Faliskie on 4/1/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewControllerWhatIsYourAddiction: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    @IBOutlet weak var topicPicker: UIPickerView!
    @IBOutlet weak var myTopicLabel: UILabel!
    
    let data = NSUserDefaults.standardUserDefaults()
    
    let topicPickerData = [
        "Select Habit",
        "Social Media",
        "Food",
        "Drugs",
        "TV",
        "Sex",
        "Gambling",
        "Video Games",
        "Tobacco",
        "Caffeine",
        "Opiates",
        "Benzos",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicPicker.dataSource = self
        topicPicker.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
//*****Topic Picker Delegates and data sources
    //Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        // returns 1 because there is one column of data
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // gets the length of the array of data
    
        return topicPickerData.count
            
    }
    
    //Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return topicPickerData[row]
        
        
    }
    
 
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        myTopicLabel.text = topicPickerData[row]
        
    
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        data.setValue(myTopicLabel.text, forKey: "myAddiction")
        if (segue.identifier == "setAddictionSegue") {
            if let destination = segue.destinationViewController as? ViewControllerHowOftenDoYouUse {
                
                switch myTopicLabel.text! {
//                case "Social Media": destination.addictionViaSegway = "Use " + myTopicLabel.text!
                case "Food": destination.addictionViaSegway = "Eat " + myTopicLabel.text!
                case "Drugs": destination.addictionViaSegway = "Take " + myTopicLabel.text!
                case "TV": destination.addictionViaSegway = "Watch " + myTopicLabel.text!
                case "Sex": destination.addictionViaSegway = "Have " + myTopicLabel.text!
                case "Gambling": destination.addictionViaSegway = "Go " + myTopicLabel.text!
                case "Video Games": destination.addictionViaSegway = "Play " + myTopicLabel.text!
                case "Caffeine": destination.addictionViaSegway = "Consume " + myTopicLabel.text!
                    
                default: destination.addictionViaSegway = "Use " + myTopicLabel.text!
                }
                
            }
        }
    }
 
    

    
}
