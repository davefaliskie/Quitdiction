//
//  ViewControllerHowOftenDoYouUse.swift
//  Quitdiction
//
//  Created by Riley Sung on 4/1/16.
//  Copyright © 2016 David Faliskie. All rights reserved.
//

import UIKit

class ViewControllerHowOftenDoYouUse: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet var whatDrugTitleLabel: UILabel!
    @IBOutlet var frequencyTextField: UITextField!
    @IBOutlet var frequencyPicker: UIPickerView!
    
    
    var frequencies = ["Hour", "Day", "Week"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
        return pickerLabel!;
    }
    
}
