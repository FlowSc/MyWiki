//
//  CustomAPI.swift
//  MyWiki
//
//  Created by Seongchan Kang on 20/11/2018.
//  Copyright © 2018 Seongchan Kang. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire
import ObjectMapper


struct CustomAPI {
    
    
   static let DOMAINURL = "https://en.wikipedia.org/api/rest_v1"
    
    
    static func getTodayWiki(completion:(([Wiki]?)->())?) {
        
        
        Alamofire.request("\(DOMAINURL)/feed/onthisday/events/11/22", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            
            print("\(DOMAINURL)/feed/onthisday/events/11/22")
            print("DOMWIN")
            switch response.result {
                
            case .success(let value):
//                print(value)
                
                var wikis:[Wiki] = []
                let json = JSON(value)
                
            
//                print(json)
                
                
                _ = json.map({
                    
                    
                    let _ = $0.1.arrayValue.map({
                        
                        if let aaa = Mapper<Wiki>().map(JSONString: $0.description) {
                            
                            wikis.append(aaa)
                            
                        }
                        
                    })
                    
                })
                
                guard let completion = completion else {return}
                
                completion(wikis)
                
//                Mapper<Wiki>().map(JSON: <#T##[String : Any]#>)
                
                
                
                
            case .failure(let error):
                guard let completion = completion else {return}
                completion(nil)
                print(error.localizedDescription)
            }
        }
        
    }
    
    static func getRandomWiki(completion:(JSON)->()?) {
        
        Alamofire.request("\(DOMAINURL)/page/random/title", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result {
                
            case .success(let value):
                print(value)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
}
