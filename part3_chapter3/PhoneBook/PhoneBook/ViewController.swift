//
//  ViewController.swift
//  PhoneBook
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiPersonImage: UIImageView!
    
    var person : Person!
    
    @IBAction func createPersonClicked(_ sender: Any) {
        let name = uiNameInput.text!
        person = Person(name : name, age : 20, mobile : "010-0000-0000", controller: self)
        uiPersonImage.backgroundColor = UIColor.brown
        NSLog("Person 객체가 만들어졌습니다 : \(name)")
    }
    
    @IBAction func makePersonStanding(_ sender: Any) {
        if  person != nil {
            person.standing()
        }
    }
    
    @IBAction func makePersonWalk(_ sender: Any) {
        if person != nil{
            person.walk()
        }
    }
    
    @IBAction func makePersonRun(_ sender: Any) {
        person.run()
    }
    
    
    @IBAction func createBabyClicked(_ sender: Any) {
        let name = uiNameInput.text!
        person = Baby(name : name , age: 2, mobile : "", controller: self)
        
        changedImage(named: "BabyStanding")
        uiPersonImage.backgroundColor = UIColor.cyan
        
        NSLog("Baby 객체가 만들어졌습니다. : \(name)")
    }
    
    
    @IBAction func makeBabyCry(_ sender: Any) {
        if let baby = person as? Baby {
            baby.cry()
        }
    }
    
    
    func changedImage (named : String){
        uiPersonImage.image = UIImage(named : named)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addObserver()
    }
    
    //SceneDelegate에서 보내는 메시지를 받을 수 있도록 하는 수신자 등록 코드
    func addObserver() {
        NSLog("addObserver 호출됨.");
        
        NotificationCenter.default.addObserver(self, selector:  Selector(("sceneDidEnterBackground")), name : NSNotification.Name("SceneDidEnterBackground"), object : nil)
          NotificationCenter.default.addObserver(self, selector:  Selector(("sceneDidBecomeActive")), name : NSNotification.Name("SceneDidBecomeActive"), object : nil)
        
        //NotificationCenter.default.addObserver(self, selector:  #selector(sceneDidEnterBackground), name : NSNotification.Name("SceneDidEnterBackground"), object : nil)
        //NotificationCenter.default.addObserver(self, selector:  #selector(sceneDidBecomeActive), name : NSNotification.Name("SceneDidBecomeActive"), object : nil)
    }
    @IBOutlet var uiNameInput: UITextField!
    
    @objc func sceneDidEnterBackground(){
        //간단한 값을 저장하거나 가져올 때 : UserDefaults  객체 사용
        NSLog("sceneDidEnterBackground  호출됨.")
        let username = uiNameInput.text!
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.synchronize()
        NSLog("UserDefaults에 저장한 username 값 : \(username)")
    }
    
    @objc func sceneDidBecomeActive(){
        //Userdefault 객체의 objectForKey메소드 사용
        NSLog("appDidBecomeActive 호출됨.")
        if let name = UserDefaults.standard.object(forKey: "username") as? String{
            NSLog("UserDefaults 에서 가져온 userName 값 : \(name)")
            
            if uiNameInput != nil {
                uiNameInput.text = name
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

