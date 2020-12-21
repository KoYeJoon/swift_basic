//
//  ViewController.swift
//  study12
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var uiNameInput: UITextField!
    @IBOutlet var uiMobileInput: UITextField!
    
    @IBOutlet var uiImage: UIImageView!
    var dog : Dog!
    var puppy : Puppy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func createDogClicked(_ sender: Any) {
        let name = uiNameInput.text!
        let mobile = uiMobileInput.text!
        dog = Dog(name: name, mobile: mobile, controller: self)
        puppy = nil
        changeImage(named: "StandDog")
    }
    
    @IBAction func createPuppyClicked(_ sender: Any) {
        let name = uiNameInput.text!
        let mobile = uiMobileInput.text!
        puppy = Puppy(name: name, mobile: mobile, controller: self)
        dog = nil
        changeImage(named: "StandPuppy")
    }
    
    @IBAction func makeStanding(_ sender: Any) {
        if dog != nil {
            dog.stand()
        }
        else if puppy != nil {
            puppy.stand()
        }
    }
    
    @IBAction func makeSit(_ sender: Any) {
        if dog != nil {
            dog.sit()
        }
        else if puppy != nil {
            puppy.sit()
        }
    }
    
    
    @IBAction func makeRun(_ sender: Any) {
    if dog != nil {
        dog.run()
    }
    else if puppy != nil {
        puppy.run()
    }
    }
    
    func changeImage(named : String) {
        uiImage.image = UIImage(named : named)
    }
}

