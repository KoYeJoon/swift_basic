//
//  CustomerInfo.swift
//  Customer
//
//  Created by Ye Joon Ko on 2020/03/07.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class CustoemerInfo : UIViewController {
     var paramName : String = ""
    
    @IBOutlet var uiId: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiId.text = "로그인 사용자 : " + paramName
    }
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
   
    
}

