//
//  ViewController.swift
//  Contacts
//
//  Created by Madiyar Kupzhassarov on 9/18/19.
//  Copyright © 2019 Madiyar Kupzhassarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    var finalName:String?
    var finalPhone:String?
    var finalGender:String?
    var finalSaveData:Bool?
    
    var contacts = [Contacts]()
   //number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    //set variables
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as? ContactsCell
    
        cell?.name_surname.text = contacts[indexPath.row].name_surname
        cell?.phone_number.text = contacts[indexPath.row].number
        cell?.contactImageView.image = contacts[indexPath.row].image
        
        return cell!
    }
    
    @IBOutlet weak var myTableView: UITableView!
    //deselect cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if finalSaveData == true{
            if let name = finalName,
                let phone = finalPhone,
                let image = finalGender{
                contacts.append(Contacts.init(name, phone, UIImage.init(named: image)!))
            }
            myTableView.reloadData()
        }
        finalSaveData = false
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "mySegue":
            let index = (myTableView.indexPathForSelectedRow?.row)!
            let destination = segue.destination as? DetailViewController
            
            destination?.name_surname = contacts[index].name_surname
            destination?.phone_number = contacts[index].number
            destination?.image = contacts[index].image
            
        case "addContact":
            finalSaveData = false
            print("")
            
        default:
            print("unexpected segue identifier")
        }
        
        
    }
    //deleting row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            contacts.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
    @IBAction func prepareForUnwind(segue:UIStoryboardSegue){
        
    }


}

