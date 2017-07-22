//
//  fieldParser.swift
//  field challenge
//
//  Created by Kevin Brennan on 7/21/17.
//  Copyright © 2017 Kevin Brennan. All rights reserved.
//

import Foundation

class fieldParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [field]{
        var fieldArray = [field]()
        dateFormatter.dateFormat = "YYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observations in observations {
                    if let observations = observations as? [String: String] {
                        if let classification = observations["classification"],
                        let title = observations["title"],
                        let discription = observations["discription"],
                        let dateString = observations["date"],
                        let date = dateFormatter.date(from: dateString) {
                        
                            if let fieldArray = field(classification: classification, title: title , discription: discription, date: date) {
                                fieldArray.append(fieldArray)
                            }
                        
                    }
                }
            }
        }
        }
            
        
        return fieldArray
    }
}
