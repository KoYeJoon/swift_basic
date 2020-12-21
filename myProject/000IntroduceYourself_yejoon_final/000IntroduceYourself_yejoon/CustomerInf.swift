//
//  CustomerInf.swift
//  000IntroduceYourself_yejoon
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//
import UIKit

class Customer {
    var name : String
    var mobile : String
    var introduceMine : String?
    var goodThing : String?
    var badThing : String?
    var hadSkills : String?
    var idea : String?
    var etcThings : String?
    
    var controller : ViewController?
    
    init(name : String, mobile : String, controller : ViewController){
        self.name = name
        self.mobile = mobile
        self.controller = controller
    }
    
}

class CustomerMenu1 : UIViewController{
    var customer : Customer?
    var controller : ViewController?

    @IBOutlet var IntroduceMine: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
        
    }
    
    func addObserver() {
       
        let userDefaults = UserDefaults.standard
        if let introduceMine = userDefaults.value(forKey: "introduceMine"){
            IntroduceMine.text = introduceMine as! String
        }
        
    }
    
    @IBAction func save2_1(_ sender: Any) {
              self.customer?.introduceMine = IntroduceMine.text
              // print(self.customer?.introduceMine)
               UserDefaults.standard.set(IntroduceMine.text, forKey: "introduceMine")
              //navigationController?.popViewController(animated : true)
    }
    
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

           self.view.endEditing(true)

     }
    
}

class CustomerMenu2 : UIViewController{
    var customer : Customer?
    var controller : ViewController?
    
    @IBOutlet var GoodThing: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
    }
    
    func addObserver() {
        let userDefaults = UserDefaults.standard
        if let goodThing = userDefaults.value(forKey: "goodThing"){
             GoodThing.text = goodThing as! String
        }
    }
    @IBAction func save2_2(_ sender: Any) {
        self.customer?.goodThing = GoodThing.text

        UserDefaults.standard.set(GoodThing.text, forKey: "goodThing")
        
        // navigationController?.popViewController(animated : true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

             self.view.endEditing(true)

       }
    
}

class CustomerMenu3 : UIViewController{
    var customer : Customer?
    var controller : ViewController?
    
    @IBOutlet var BadThing: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
        
    }
    
    func addObserver() {
       
        let userDefaults = UserDefaults.standard
        if let badThing = userDefaults.value(forKey: "badThing"){
            BadThing.text = badThing as! String
        }

    }
    
    @IBAction func save2_3(_ sender: Any) {
        self.customer?.badThing = BadThing.text
         UserDefaults.standard.set(BadThing.text, forKey: "badThing")
        // navigationController?.popViewController(animated : true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

             self.view.endEditing(true)

       }
  
}

class CustomerMenu4 : UIViewController{
    var customer : Customer?
    var controller : ViewController?
    
    @IBOutlet var HadSkills: UITextView!

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
        
    }
    
    func addObserver() {
       
        let userDefaults = UserDefaults.standard

         if let hadSkills = userDefaults.value(forKey: "hadSkills") {
            HadSkills.text = hadSkills as! String
        }

    }
      
    @IBAction func save2_4(_ sender: Any) {
        self.customer?.hadSkills = HadSkills.text
               UserDefaults.standard.set(HadSkills.text
                          , forKey: "hadSkills")
               //navigationController?.popViewController(animated : true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

             self.view.endEditing(true)

       }
}

class CustomerMenu5 : UIViewController{
    var customer : Customer?
    var controller : ViewController?
    

    @IBOutlet var Idea: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
        
    }
    
    func addObserver() {
       
        let userDefaults = UserDefaults.standard
       if let idea = userDefaults.value(forKey: "idea") {
            Idea.text = idea as! String
        }

    }
    
    @IBAction func save2_5(_ sender: Any) {
        self.customer?.idea = Idea.text
        UserDefaults.standard.set(Idea.text, forKey: "idea")
         //navigationController?.popViewController(animated : true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

             self.view.endEditing(true)

       }
}

class CustomerMenu6 : UIViewController{
    var customer : Customer?
    var controller : ViewController?
    
    @IBOutlet var EtcThings: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
        
    }
    
    func addObserver() {
       
        let userDefaults = UserDefaults.standard
       if let etcThings = userDefaults.value(forKey: "etcThings"){
            EtcThings.text = etcThings as! String
        }
    }
    
    @IBAction func save2_6(_ sender: Any) {
        self.customer?.etcThings = EtcThings.text
              UserDefaults.standard.set(EtcThings.text, forKey: "etcThings")
               //navigationController?.popViewController(animated : true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

             self.view.endEditing(true)

       }
}


class CustomerMenu7 : UIViewController {
    var customer : Customer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
              super.didReceiveMemoryWarning()
          }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

             self.view.endEditing(true)

       }
}
