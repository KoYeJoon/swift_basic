//
//  ViewController.swift
//  Thread
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /*
     동시에 작업이 실행되도록 하는 기능
     1. thread : 스레드를 만들어 실행할 수 있게함
                        각각의 작업을 스레드로 만들고 스레드를 관리해야 하므로 비효율적
     2. operation : 각각의 작업을 operation 객체로 만들고 작업 큐에 넣는 방식
                        스레드를 만든 후 큐에 넣기만 하면 스레드가 알아서 스레드 관리해줌
     3. GCD : 코드 실행방식이 간단
     */

    @IBOutlet var uiCountLabel: UILabel!
    @IBOutlet var uiProgress: UIProgressView!
    
    /*
    @IBAction func startClicked(_ sender: Any) {
        let thread = Thread(target: self, selector: #selector(incrProgress), object: nil)
        thread.start()
    }
    */
    @IBAction func startClicked(_ sender: Any) {
        DispatchQueue.global(qos: .background).async {
            () -> () in
            for count in 1 ... 100 {
                let progress = Float(count) / 100.0
                NSLog("progress : \(progress)")
                
                
                DispatchQueue.main.async {
                    self.uiProgress.setProgress(progress, animated: false)
                    self.uiCountLabel.text = String(progress)
                }
                
                Thread.sleep(forTimeInterval: 0.1)
            }
        }
    }
    
    /*
    @objc func incrProgress() {
        for count in 1 ... 100 {
            if Thread.current.isCancelled == true {
                break
            }
            
            let progress = Float(count) / 100.0
            NSLog("progress : \(progress)")
            
            //uiProgress.setProgress(progress, animated: true)
            //uiCountLabel.text = String(progress)
            //UI 접근 코드를 applyprogress로 옮기기
            self.perform(#selector(applyProgress), on: Thread.main, with : progress, waitUntilDone: false)
            
            //코드가 한번 반복될 때마다 0.1초 쉼 -->Thread.sleep 이용
            Thread.sleep(forTimeInterval: 0.1)
        }
    }
    
    @objc func applyProgress(progress : Float){
        uiProgress.setProgress(progress, animated: false)
        uiCountLabel.text = String(progress)
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

