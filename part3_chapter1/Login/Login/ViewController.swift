//
//  ViewController.swift
//  Login
//
//  Created by Ye Joon Ko on 2020/03/06.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

//화면을 다루는  경우 import  UIKit는  필수이다.
import UIKit

//UIViewContorller : 뷰 컨트롤러를 위한 기본 클래스
class ViewController: UIViewController {
    
    //변수이름 : uiIdInput, 자료형 : UITextField
     
    @IBOutlet var uiIdInput: UITextField!
    @IBOutlet var uiPasswordInput: UITextField!
    @IBOutlet var uiResult: UILabel!
    
    let id = "test1"
    let password = "123456"
    
    //아래의 매소드 : 버튼 클릭했을 때 동작할 기능을 위해서 만듬(ctrl+끌기)
    //IB : Interface Builder, Action
    //@(annotation) : 빌드가 진행될 때 해석됨
    //UIAlertController : 대화상자
    //present:새로운 화면을 띄우는 경우
    /*
     *UIAlertController
     1. title : 대화상자의 제목
     2. message : 대화 상자의 내용으로 표시되는 글
     3, preferredStyle : 대화 상자의 스타일 (actionSheet, alert)
     *
     *UIAlertAction
     1. title : 버튼에 표시되는 글
     2. style : 버튼의 스타일(default,cancel,destructive)
     3,handler : 사용자가 액션을 선택했을 때 실행될 블록코드
     */
    @IBAction func loginClicked(_ sender: UIButton) {
        let userId = uiIdInput.text
        let userPassword = uiPasswordInput.text
        
        //미리 만든 userId와 userPassword와 비교
        let alert = UIAlertController(title: "알림", message: "아이디 : \(userId!), 비밀번호 : \(userPassword!)", preferredStyle: .alert)
        
    
        let okAction = UIAlertAction(title : "확인", style:  .default){
            (alert:UIAlertAction!) -> Void in
            NSLog("알림 대화상자의 확인 버튼이 눌렸습니다.")
            if (userId == self.id) && (userPassword == self.password){
                self.uiResult.text = "로그인 성공"
            }
            else{
                self.uiResult.text = "로그인 실패"
            }
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
  
    //ViewController에 있지만 부모 클래스인 UIViewController 메소드 재정의
    //화면 초기화가 필요한 경우 이 함수에 코드  삽입
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("뷰  컨트롤러가 로딩되었습니다.")
        // Do any additional setup after loading the view.
    }


}

