//
//  ViewControllerHowOftenDoYouUse.swift
//  Quitdiction
//
//  Created by Riley Sung on 4/1/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewControllerHowOftenDoYouUse: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let data = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet var whatDrugTitleLabel: UILabel!
    @IBOutlet var frequencyTextField: UITextField!
    @IBOutlet var frequencyPicker: UIPickerView!
    
    var myAddiction = String()
    
    var addictionViaSegway = String()
    
    var frequencies = ["Hour", "Day", "Week"]
    var selectedFrequency = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myAddiction = data.valueForKey("myAddiction") as! String
        whatDrugTitleLabel.text = "How Often Do You \(addictionViaSegway)?"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setTitle() {
        switch myAddiction {
        //                case "Social Media": destination.addictionViaSegway = "Use " + myTopicLabel.text!
        case "Food": whatDrugTitleLabel.text = "Eat " + myAddiction
        case "Drugs": whatDrugTitleLabel.text = "Take " + myAddiction
        case "TV": whatDrugTitleLabel.text = "Watch " + myAddiction
        case "Sex": whatDrugTitleLabel.text = "Have " + myAddiction
        case "Gambling": whatDrugTitleLabel.text = "Go " + myAddiction
        case "Video Games": whatDrugTitleLabel.text = "Play " + myAddiction
        case "Caffeine": whatDrugTitleLabel.text = "Consume " + myAddiction
            
        default: whatDrugTitleLabel.text = "Use " + myAddiction
        }
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return frequencies.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return frequencies[row]
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        var pickerLabel = view as? UILabel;
        
        pickerLabel = UILabel()
        
        pickerLabel?.font = UIFont(name: "Montserrat", size: 14)
        pickerLabel?.textAlignment = NSTextAlignment.Center
    
        
        pickerLabel?.text = frequencies[row]
        selectedFrequency = frequencies[row]
        
        return pickerLabel!;
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if let frequency = Int(frequencyTextField.text!) as Int? {
            let frequencyString = "\(frequency) times per \(selectedFrequency)"
            data.setValue(frequencyString, forKey: "frequencyString")
        } else {
            
        }
    }
    
}
