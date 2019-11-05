//
//  Contacts.swift
//  Contacts
//
//  Created by Madiyar Kupzhassarov on 9/18/19.
//  Copyright © 2019 Madiyar Kupzhassarov. All rights reserved.
//

import Foundation
import UIKit

class Contacts{
    
    var name_surname: String?
    var number: String?
    var image: UIImage?
    
    init(_ name_surname:String, _ number:String, _ image:UIImage) {
        self.name_surname = name_surname
        self.number = number
        self.image = image
    }
}
