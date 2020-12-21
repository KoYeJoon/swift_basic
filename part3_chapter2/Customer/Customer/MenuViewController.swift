//
//  MenuViewController.swift
//  Customer
//
//  Created by Ye Joon Ko on 2020/03/07.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class MenuViewController : UIViewController {
    @IBOutlet var uiNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiNameLabel.text = "로그인 사용자 : " + paramName
    }
    
    override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    var paramName : String = ""
    
    
    @IBAction func CustomerInfo(_ sender: Any) {
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "AfterLogin2_1") as? CustoemerInfo {
            menuScreen.paramName = self.paramName
            self.navigationController?.pushViewController(menuScreen, animated: true)
        }
    }
    
    @IBAction func CustomerService(_ sender: Any) {
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "AfterLogin2_2") as? CustomerService {
            self.navigationController?.pushViewController(menuScreen, animated: true)
        }
    }
    
    
    
}
