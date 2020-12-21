//
//  MenuViewController.swift
//  PresentScreen
//
//  Created by Ye Joon Ko on 2020/03/07.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class MenuViewController : UIViewController {
    override func viewDidLoad() {
            super.viewDidLoad()
        self.uiNameLabel.text = "전달 받은 값 : " + paramName
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func backClicked(_ sender: Any) {
       //dismiss : 이전 화면으로 돌아가기
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet var uiNameLabel: UILabel!
    var paramName : String = ""
    
}
    
