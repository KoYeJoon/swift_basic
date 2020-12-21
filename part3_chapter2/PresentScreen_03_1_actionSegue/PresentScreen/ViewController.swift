//
//  ViewController.swift
//  PresentScreen
//
//  Created by Ye Joon Ko on 2020/03/07.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //빈 동그라미는 인터베이스 빌더의 뷰 객체와 이 메소드 간의 연결이 끊어진 것이다.
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

    //navigationController 속성을 이용할 것임
    //pushViewController: 네비게이션 컨트롤러가 새로운 화면을 띄워줌
    
    @IBAction func moveToMenuClicked(_ sender: Any) {
        if let menuScreen = self.storyboard?.instantiateViewController(withIdentifier: "Menu") {
                   self.navigationController?.pushViewController(menuScreen, animated: true)
               }
    }
}

