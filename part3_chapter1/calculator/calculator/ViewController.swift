//
//  ViewController.swift
//  calculator
//
//  Created by Ye Joon Ko on 2020/03/07.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

protocol Calculator{
    func add() ->Int
    func subtract()->Int
    func mul()->Int
    func divi() ->Int
}
class MyCalculator : Calculator{
    var num1 : Int
    var num2 : Int
    init(num1 : Int, num2: Int){
        self.num1 = num1
        self.num2 = num2
    }
    func add()->Int{
        return num1+num2
    }
    func subtract()->Int{
        return num1-num2
    }
    func mul()->Int{
        return num1*num2
    }
    func divi()-> Int{
        return num1/num2
    }
 
}
class ViewController: UIViewController {

    
    @IBOutlet var uiAInput: UITextField!
    @IBOutlet var uiBInput: UITextField!
    
    
    @IBOutlet var uiResult: UILabel!
    @IBAction func addClicked(_ sender: UIButton) {
        let aStr = uiAInput.text
        let bStr = uiBInput.text
        
        let a : Int! = Int(aStr!)
        let b : Int! = Int(bStr!)
        let MCalculator = MyCalculator(num1 : a, num2:b)
        
        let result = MCalculator.add()
        uiResult.text = String(result)
    }
    
    @IBAction func uisubClicked(_ sender: UIButton) {
        let aStr = uiAInput.text
        let bStr = uiBInput.text
        
        let a : Int! = Int(aStr!)
        let b : Int! = Int(bStr!)
        
        let MCalculator = MyCalculator(num1 : a, num2:b)
               
            let result = MCalculator.subtract()
        uiResult.text = String(result)
    }
    
    @IBAction func uiMulClicked(_ sender: UIButton) {
        let aStr = uiAInput.text
        let bStr = uiBInput.text
        
        let a : Int! = Int(aStr!)
        let b : Int! = Int(bStr!)
        
         let MCalculator = MyCalculator(num1 : a, num2:b)
                      
                   let result = MCalculator.mul()
        uiResult.text = String(result)
    }
    
    @IBAction func uiDivClicked(_ sender: UIButton) {
        let aStr = uiAInput.text
        let bStr = uiBInput.text
        
        let a : Int! = Int(aStr!)
        let b : Int! = Int(bStr!)
        
         let MCalculator = MyCalculator(num1 : a, num2:b)
                      
                   let result = MCalculator.divi()
        uiResult.text = String(result)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

