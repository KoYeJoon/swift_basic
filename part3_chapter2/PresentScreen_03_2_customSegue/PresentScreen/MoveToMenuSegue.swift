//
//  MoveToMenuSegue.swift
//  PresentScreen
//
//  Created by Ye Joon Ko on 2020/03/07.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class MoveToMenuSegue : UIStoryboardSegue{
    override func perform() {
        //메뉴화면으로 갈 수는 있으나, 돌아오지 못함
        //UIView.transition(from: self.source.view, to: self.destination.view, duration: 2, options: UIView.AnimationOptions.transitionCrossDissolve, completion: nil)
        self.source.navigationController?.pushViewController(self.destination, animated: true)
        
    }
}
