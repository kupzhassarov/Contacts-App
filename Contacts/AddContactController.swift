//
//  AddContactController.swift
//  Contacts
//
//  Created by Madiyar Kupzhassarov on 9/19/19.
//  Copyright © 2019 Madiyar Kupzhassarov. All rights reserved.
//

import UIKit

class AddContactController: UIViewController{
    
    @IBOutlet weak var name_surname_add: UITextField!
    @IBOutlet weak var phone_number_add: UITextField!
    @IBOutlet weak var gender_add: UIPickerView!
    private let dataSource = ["male", "female"]
    var nameText = ""
    var phoneText = ""
    var genderSelect = ""
    var saveData:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gender_add.dataSource = self
        gender_add.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveData(_ sender: UIButton) {
        self.nameText = name_surname_add.text!
        self.phoneText = phone_number_add.text!
        self.genderSelect = dataSource[gender_add.selectedRow(inComponent: 0)]
        
        performSegue(withIdentifier: "addAndBack", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        saveData = true
        let vc = segue.destination as! ViewController
        vc.finalName = self.nameText
        vc.finalPhone = self.phoneText
        vc.finalGender = self.genderSelect
        vc.finalSaveData = self.saveData
    }    
}
extension AddContactController:UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
}
