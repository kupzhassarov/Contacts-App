//
//   Student.swift
//  Contacts
//
//  Created by Margulan Sugirbay on 9/18/19.
//  Copyright © 2019 Margulan Sugirbay. All rights reserved.
//

import Foundation

class Student{
    var name_surname: String?
    var number: Int?
    
    init(_ name_surname:String, _ number:Int) {
        self.name_surname = name_surname
        self.number = number
    }
}
