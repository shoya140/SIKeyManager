//
//  ViewController.swift
//  SIKeyManager
//
//  Created by Shoya Ishimaru on 2015/05/04.
//  Copyright (c) 2015年 shoya140. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // key manager
        let keyManager = SIKeyManager()
        println(keyManager.clientKey)
        println(keyManager.clientSecret)
        
        // header file
        println(CLIENT_KEY)
        println(CLIENT_SECRET)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

