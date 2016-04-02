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
    
    @IBOutlet weak var addictionPicker: UIPickerView!
    @IBOutlet weak var myAddictionLabel: UILabel!
    
    
    let topicPickerData = [
        "Social Media",
        "Food",
        "Drugs",
        "TV",
        "Sex",
        "Gambling",
        "Video Games"
    ]
    
    let addictionPickerData = [
        "one",
        "two",
        "three"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicPicker.dataSource = self
        topicPicker.delegate = self
        
        addictionPicker.dataSource = self
        addictionPicker.delegate = self
        
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
        
        if pickerView.tag == 1 {
            return topicPickerData.count
        } else if pickerView.tag == 2 {
            return addictionPickerData.count
        }
        return 1
            
    }
    
    //Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return topicPickerData[row]
        } else if pickerView.tag == 2 {
            return addictionPickerData[row]
        }
        return ""
        
    }
    
 
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView.tag == 1{
            myTopicLabel.text = topicPickerData[row]
        } else if pickerView.tag == 2 {
            myAddictionLabel.text = addictionPickerData[row]
        }
    
    }
 
    

    
}
