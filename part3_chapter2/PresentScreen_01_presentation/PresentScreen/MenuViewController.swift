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
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func backClicked(_ sender: Any) {
       //dismiss : 이전 화면으로 돌아가기
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
    
