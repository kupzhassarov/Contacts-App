//
//  DetailViewController.swift
//  Contacts
//
//  Created by Madiyar Kupzhassarov on 9/18/19.
//  Copyright © 2019 Madiyar Kupzhassarov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var name_surname: String?
    var phone_number: String?
    var image: UIImage?
    
    var contacts:Contacts?
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var nameSurnameLabel: UILabel!
    @IBOutlet weak var contacrImageView: UIImageView!
    @IBOutlet weak var btnCall: UIButton!
    @IBOutlet weak var btnEmail: UIButton!
    @IBOutlet weak var btnWhatsApp: UIButton!
    
    let iconCall:UIImage? = UIImage(named: "call")
    let iconEmail:UIImage? = UIImage(named: "envelope")
    let iconWhatsApp:UIImage? = UIImage(named: "whatsapp-logo")
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameSurnameLabel.text = name_surname
        phoneNumberLabel.text = phone_number
        contacrImageView.image = image
        
        btnCall.setImage(iconCall, for:UIControl.State.normal)
        btnEmail.setImage(iconEmail, for:UIControl.State.normal)
        btnWhatsApp.setImage(iconWhatsApp, for:UIControl.State.normal)
        
        
    }
    
    @IBAction func editBtn(_ sender: Any) {
        self.name_surname = nameSurnameLabel.text!
        self.phone_number = phoneNumberLabel.text!
        self.image = contacrImageView.image!
        
        performSegue(withIdentifier: "goToEditSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! EditController
        vc.name_surname = self.name_surname
        vc.phone_number = self.phone_number
        vc.image = self.image
    }
    
    @IBAction func deleteBtn(_ sender: Any) {
    }
    @IBAction func prepareForUnwind(segue:UIStoryboardSegue){
        
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
