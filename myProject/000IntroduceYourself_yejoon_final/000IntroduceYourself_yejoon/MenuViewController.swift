//
//  MenuViewController.swift
//  000IntroduceYourself_yejoon
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class MenuViewController : UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

             self.view.endEditing(true)

       }
    @IBOutlet var uiNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiNameLabel.text = "로그인 사용자 : " + paramName
        addObserver()
    }
    
    
    override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    var paramName : String = ""
    var customer : Customer?

    
    @IBAction func menu2_1Clicked(_ sender: Any) {
        
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "menu2_1") as? CustomerMenu1{
            
            menuScreen.customer = customer;
            self.navigationController?.pushViewController(menuScreen, animated: true)
               }
        
    }
  
    
    
    @IBAction func menu2_2Clicked(_ sender: Any) {
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "menu2_2") as? CustomerMenu2
        {
            menuScreen.customer = customer;
            self.navigationController?.pushViewController(menuScreen, animated: true)
           }
    }
    
    @IBAction func menu2_3Clicked(_ sender: Any) {
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "menu2_3") as? CustomerMenu3{
         menuScreen.customer = customer;
            self.navigationController?.pushViewController(menuScreen, animated: true)
           }
    }
    
    @IBAction func menu2_4Clicked(_ sender: Any) {
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "menu2_4") as? CustomerMenu4{
      menuScreen.customer = customer;
            self.navigationController?.pushViewController(menuScreen, animated: true)
           }
    }
    
    @IBAction func menu2_5Clicked(_ sender: Any) {
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "menu2_5") as? CustomerMenu5
        {
            menuScreen.customer = customer;
            self.navigationController?.pushViewController(menuScreen, animated: true)
           }
    }
    
    @IBAction func menu2_6Clicked(_ sender: Any) {
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "menu2_6") as? CustomerMenu6{
             menuScreen.customer = customer;
   self.navigationController?.pushViewController(menuScreen, animated: true)
           }
    }
    
    @IBAction func menu2_7Clicked(_ sender: Any) {
        
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "menu2_7") as? CustomerMenu7 {
                menuScreen.customer = customer;
            self.navigationController?.pushViewController(menuScreen, animated: true)
        }
        
    }
    
    
    
    
    func addObserver() {
        NSLog("addObserver 호출됨.");
        
        NotificationCenter.default.addObserver(self, selector:  Selector(("sceneDidEnterBackground")), name : NSNotification.Name("SceneDidEnterBackground"), object : nil)
          NotificationCenter.default.addObserver(self, selector:  Selector(("sceneDidBecomeActive")), name : NSNotification.Name("SceneDidBecomeActive"), object : nil)
        
    }
    @objc func sceneDidEnterBackground(){
        //간단한 값을 저장하거나 가져올 때 : UserDefaults  객체 사용
        NSLog("sceneDidEnterBackground  호출됨.")
        let username = uiNameLabel.text!
        let usermobile = customer?.mobile
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
            if uiNameLabel != nil {
                uiNameLabel.text = name
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
