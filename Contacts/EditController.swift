//
//  EditController.swift
//  Contacts
//
//  Created by Madiyar Kupzhassarov on 9/22/19.
//  Copyright © 2019 Madiyar Kupzhassarov. All rights reserved.
//

import UIKit

class EditController: UIViewController {
    
    var name_surname: String?
    var phone_number: String?
    var image: UIImage?
    
    @IBOutlet weak var editImage: UIImageView!
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editPhone: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    
    var contacts:Contacts?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editName.text = name_surname
        editPhone.text = phone_number
        editImage.image = image
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
