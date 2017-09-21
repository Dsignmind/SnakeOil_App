//
//  ViewController.swift
//  MiraclePill
//
//  Created by Home on 9/19/17.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipInput: UITextField!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var successIcon: UIImageView!
    @IBOutlet weak var pillIcon: UIImageView!
    @IBOutlet weak var miraclePillsLabel: UILabel!
    @IBOutlet weak var miraclePillsPrice: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetInput: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityInput: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var divider: UIView!
    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor.purple
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryInput.isHidden = true
        countryLabel.isHidden = true
        zipInput.isHidden = true
        zipLabel.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryInput.isHidden = false
        countryLabel.isHidden = false
        zipInput.isHidden = false
        zipLabel.isHidden = false
    }
    @IBAction func buyBtnPressed(_ sender: Any) {
        pillIcon.isHidden = true
        miraclePillsLabel.isHidden = true
        miraclePillsPrice.isHidden = true
        divider.isHidden = true
        nameLabel.isHidden = true
        nameInput.isHidden = true
        streetLabel.isHidden = true
        streetInput.isHidden = true
        cityLabel.isHidden = true
        cityInput.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryInput.isHidden = true
        zipLabel.isHidden = true
        zipInput.isHidden = true
        buyBtn.isHidden = true
        successIcon.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(4)) {
            self.pillIcon.isHidden = false
            self.miraclePillsLabel.isHidden = false
            self.miraclePillsPrice.isHidden = false
            self.divider.isHidden = false
            self.nameLabel.isHidden = false
            self.nameInput.isHidden = false
            self.streetLabel.isHidden = false
            self.streetInput.isHidden = false
            self.cityLabel.isHidden = false
            self.cityInput.isHidden = false
            self.stateLabel.isHidden = false
            self.statePickerBtn.isHidden = false
            self.countryLabel.isHidden = false
            self.countryInput.isHidden = false
            self.zipLabel.isHidden = false
            self.zipInput.isHidden = false
            self.buyBtn.isHidden = false
            self.successIcon.isHidden = true
        }
    }

}

