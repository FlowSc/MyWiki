//
//  Standard.swift
//  MyWiki
//
//  Created by Seongchan Kang on 21/11/2018.
//  Copyright © 2018 Seongchan Kang. All rights reserved.
//

import Foundation

class Standard {

    static let shared = Standard()
    
    let dFormatter = DateFormatter()
    
    private init() {
        
        dFormatter.dateFormat = "MM/dd"

    }
    
    
}
