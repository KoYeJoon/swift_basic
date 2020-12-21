//
//  Baby.swift
//  PhoneBook
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class Baby : Person {
    
    override init(name : String, age : Int, mobile : String, controller : ViewController){
        super.init(name: name, age: age, mobile: mobile, controller: controller)
        }
    
    func cry() {
        if controller != nil {
            controller.changedImage(named: "BabyCry")
        }
    }
}
