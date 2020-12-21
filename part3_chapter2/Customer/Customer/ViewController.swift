//
//  ViewController.swift
//  Customer
//
//  Created by Ye Joon Ko on 2020/03/07.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBOutlet var uiIdInput: UITextField!
    
    @IBOutlet var uiPasswordInput: UITextField!
    
    @IBAction func uiLogin(_ sender: Any) {
        let userId = uiIdInput.text
        let userPassword = uiPasswordInput.text
        let alert = UIAlertController(title : "로그인 정보", message:  "아이디 : \(userId!), 비밀번호 : \(userPassword!)", preferredStyle: .alert)
        let okAction = UIAlertAction(title :"확인", style: .default){
            (alert  : UIAlertAction!) -> Void in
            NSLog("알림 대화 상자의 확인 버튼이 눌렸습니다.")
            
        }
        alert.addAction(okAction)
       
        
        //self.performSegue(withIdentifier: "AfterLogin1", sender: self)
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "AfterLogin1") as? MenuViewController{
            menuScreen.paramName = self.uiIdInput.text!
            self.navigationController?.pushViewController(menuScreen, animated: true)
        }
        present(alert, animated: true, completion:nil)
    }
}

