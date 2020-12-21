//
//  ViewController.swift
//  000IntroduceYourself_yejoon
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var customer : Customer?
    
    @IBOutlet var uiName: UITextField!
    
    @IBOutlet var uiMobile: UITextField!
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

          self.view.endEditing(true)

    }



    @IBAction func nextScreenClicked(_ sender: Any) {
                let userName = uiName.text
               let userMobile = uiMobile.text
            customer = Customer(name : userName! , mobile : userMobile! ,controller : self)
               let alert = UIAlertController(title : "고객 정보", message:  "이름 : \(userName!), 전화번호 : \(userMobile!)", preferredStyle: .alert)
               let okAction = UIAlertAction(title :"확인", style: .default){
                   (alert  : UIAlertAction!) -> Void in
                   NSLog("알림 대화 상자의 확인 버튼이 눌렸습니다.")
                   
               }
               alert.addAction(okAction)
              
               
               //self.performSegue(withIdentifier: "AfterLogin1", sender: self)
               if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "menu1") as? MenuViewController{
                   menuScreen.paramName = self.uiName.text!
                   self.navigationController?.pushViewController(menuScreen, animated: true)
                menuScreen.customer = customer
               }
        
               present(alert, animated: true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
        // Do any additional setup after loading the view.
    }
    
    func addObserver() {
        NSLog("addObserver 호출됨.");
        
        NotificationCenter.default.addObserver(self, selector:  Selector(("sceneDidEnterBackground")), name : NSNotification.Name("SceneDidEnterBackground"), object : nil)
          NotificationCenter.default.addObserver(self, selector:  Selector(("sceneDidBecomeActive")), name : NSNotification.Name("SceneDidBecomeActive"), object : nil)
        
    }
    @objc func sceneDidEnterBackground(){
        //간단한 값을 저장하거나 가져올 때 : UserDefaults  객체 사용
        NSLog("sceneDidEnterBackground  호출됨.")
        let username = uiName.text!
        let usermobile = uiMobile.text!
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.set(usermobile, forKey: "usermobile")
        UserDefaults.standard.synchronize()
        NSLog("UserDefaults에 저장한 username 값 : \(username)")
    }
    
    @objc func sceneDidBecomeActive(){
        //Userdefault 객체의 objectForKey메소드 사용
        NSLog("appDidBecomeActive 호출됨.")
        if let name = UserDefaults.standard.object(forKey: "username") as? String{
            NSLog("UserDefaults 에서 가져온 userName 값 : \(name)")
            let mobile = UserDefaults.standard.object(forKey: "usermobile")as? String
            if uiName != nil {
                uiName.text = name
            }
            if uiMobile != nil{
                uiMobile.text = mobile
            }
        }
    }
    
    deinit{
        NSLog("deinit 호출됨.")
        removeObserver()
    }
    
    
    func removeObserver(){
        let nc = NotificationCenter.default
        nc.removeObserver(self, name: NSNotification.Name("SceneDidEnterBackground"), object: nil)
        nc.removeObserver(self, name: NSNotification.Name("SceneDidBecomeActive"),object: nil)
        NSLog("removeObserver호출됨.")
    }

}

