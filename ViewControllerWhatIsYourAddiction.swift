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
    
    let topicPickerData = [
        "Social Media",
        "Food",
        "Drugs",
        "TV",
        "Sex",
        "Gambling",
        "Video Games"
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
    
    
    
    
    
    
    //Delegates and data sources for the Topic Picker
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
    
        //  **** if we wanted to set the selection from the picker to a label. ***
        //    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //        myLabel.text = topicPickerData[row]
        //    }

    
}
