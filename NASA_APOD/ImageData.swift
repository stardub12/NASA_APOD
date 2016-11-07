//
//  File.swift
//  NASA_APOD
//
//  Created by Simone Grant on 11/6/16.
//  Copyright © 2016 Simone Grant. All rights reserved.
//

import Foundation

class ImageData {
    let date: String
    let explanation: String
    let title: String
    let imgURL: URL
    
    init(date: String, explanation: String, title: String, imgURL: URL) {
        self.date = date
        self.explanation = explanation
        self.title = title
        self.imgURL = imgURL
        
//    convenience init?(model: [String: Any]) {
//            if let date = model["date"] as? String,
//            let explanation = model["explanation"] as? String,
//            let title = model["title"] as? String,
//                let imgURL = model("url") as? URL {
//                self.init(date: date, explanation: explanation, title: title, imgURL: imgURL)
//            } else {
//                return nil
//            }
//        }
        
    }
    
}
