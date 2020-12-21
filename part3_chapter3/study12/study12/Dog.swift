//
//  Dog.swift
//  study12
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

protocol Animal {
    func stand () -> Void
    func run () -> Void
    func sit () -> Void
}

class Dog : Animal {
    func stand() {
        if controller != nil {
            controller?.changeImage(named: "StandDog")
        }
    }
    
    func run() {
         if controller != nil {
                   controller?.changeImage(named: "RunDog")
               }
    }
    
    func sit() {
         if controller != nil {
                   controller?.changeImage(named: "SitDog")
               }
    }
    
    var name : String?
    var mobile : String?
    
    var controller : ViewController?
    
    init(name : String, mobile : String, controller : ViewController){
        self.name = name
        self.mobile = mobile
        self.controller = controller
    }
    
    
}

class Puppy : Dog{
    override init(name : String, mobile : String, controller : ViewController){
        super.init(name: name, mobile: mobile, controller: controller)
    }
    
    override func stand() {
           if controller != nil {
               controller?.changeImage(named: "StandPuppy")
           }
       }
       
    override func run() {
            if controller != nil {
                      controller?.changeImage(named: "RunPuppy")
                  }
       }
       
       override func sit() {
            if controller != nil {
                      controller?.changeImage(named: "SitPuppy")
                  }
       }
}
