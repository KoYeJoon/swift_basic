//
//  Person.swift
//  PhoneBook
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

class Person{
    var name : String!
    var age : Int!
    var mobile : String!
    
    var controller : ViewController!
    
    
    init(name : String, age : Int, mobile : String, controller : ViewController
    ){
        self.name = name
        self.age = age
        self.mobile = mobile
        
        self.controller = controller
    }
    
    func standing() {
        if controller != nil {
            controller.changedImage(named: "PersonStanding")
        }
    }
    
    
    func walk() {
        if controller != nil {
            controller.changedImage(named: "PersonWalk")
        }
    }
    
    func run() {
        if controller != nil {
            controller.changedImage(named: "PersonRun")
        }
    }
}
