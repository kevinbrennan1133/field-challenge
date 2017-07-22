//
//  loaderJSON.swift
//  field challenge
//
//  Created by Kevin Brennan on 7/21/17.
//  Copyright © 2017 Kevin Brennan. All rights reserved.
//

import Foundation

class JSONLoader {
    class func load (filename: String) -> [field] {
        var events = [field]()
        
       if let path = Bundle.main.path(forResource: filename, ofType: "json"),
        let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            events = fieldParser.parse(data)
        }
    return events
    }
}
