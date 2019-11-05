//
//  ContactsCell.swift
//  Contacts
//
//  Created by Madiyar Kupzhassarov on 9/18/19.
//  Copyright © 2019 Madiyar Kupzhassarov. All rights reserved.
//

import UIKit

class ContactsCell: UITableViewCell {

    @IBOutlet weak var contactImageView: UIImageView!
    @IBOutlet weak var name_surname: UILabel!
    @IBOutlet weak var phone_number: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
