//
//  SIKeyManager.swift
//  SIKeyManager
//
//  Created by Shoya Ishimaru on 2015/05/04.
//  Copyright (c) 2015年 shoya140. All rights reserved.
//

import UIKit

class SIKeyManager: NSObject {
    
    var clientKey = ""
    var clientSecret = ""
    
    override init() {
        super.init()
        self.readKeys()
    }
    
    func readKeys () {
        let path = NSBundle.mainBundle().pathForResource("key", ofType: "json")!
        let fileHandler = NSFileHandle(forReadingAtPath: path)
        
        if let data = fileHandler?.readDataToEndOfFile() {
            var json = NSJSONSerialization.JSONObjectWithData(data,
                options: NSJSONReadingOptions.AllowFragments,
                error: nil) as! NSDictionary
            
            self.clientKey = json.objectForKey("client_key") as! String
            self.clientSecret = json.objectForKey("client_secret") as! String
        }
    }
}