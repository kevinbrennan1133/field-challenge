//
//  title.swift
//  field challenge
//
//  Created by Kevin Brennan on 7/21/17.
//  Copyright © 2017 Kevin Brennan. All rights reserved.
//

import UIKit

struct titles {
    let classification: field
    let title: String
    let discription: String
    let date: Date
    
    init(classification: field, title: String, discription: String, date: Date) {
        self.classification = classification
        self.title = title
        self.discription = discription
        self.date = date
    }

    init? (className: String, title: String, discription: String, date: Date){
        if let classification = field(rawValue: className){
                self.init(classification: classification, title: title, discription: discription, date: date)
        }
        else {
            return nil
        }
    }
}
