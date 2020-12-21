//
//  ViewController.swift
//  PresentScreen
//
//  Created by Ye Joon Ko on 2020/03/07.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func presentMenuClicked(_ sender: UIButton) {
        //withIdentifier은 두 번째 화면 ID인 Menu가 된 것이다.
        //self.storyboard! 는 첫째 화면 스토리보드
        //inistantiateViewController로 두번째 화면의 뷰 컨트롤러 생성
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "Menu"){
        menuScreen.modalPresentationStyle = .overFullScreen
            self.present(menuScreen, animated: true, completion: nil)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

