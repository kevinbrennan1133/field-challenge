//
//  field.swift
//  field challenge
//
//  Created by Kevin Brennan on 7/21/17.
//  Copyright © 2017 Kevin Brennan. All rights reserved.
//

import UIKit

enum field: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
