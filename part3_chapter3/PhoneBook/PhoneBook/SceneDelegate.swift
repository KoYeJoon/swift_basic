//
//  SceneDelegate.swift
//  PhoneBook
//
//  Created by Ye Joon Ko on 2020/03/08.
//  Copyright © 2020 Ye Joon Ko. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
        /*
         ??applicationWillTerminate : 앱이 종료될 때 호출
         */
        //NSLog("applicationWillTerminate 호출됨.")
        NSLog("sceneDidDisconnect 호출됨")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
        
       /*
         앱이 중지되었다가 시작되었거나 처음 시작되면서 실행되었을 때 호출함
         inactive -> Active
         */
        
        
        //NSLog("applicationDidBecomeActive 호출됨")
        NSLog("sceneDidBecomeActive 호출됨")
        
        NotificationCenter.default.post(name : NSNotification.Name("SceneDidBecomeActive"),object: nil)
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
        
        /*
         앱이 실행된 상태에서 비활성화 상태로 바뀔 때 호출함.
         Active -> Inactive
         */
        
        //NSLog("applicationWillResignActive호출됨")
        NSLog("sceneWillResignActive호출됨")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
        
        /*
         앱이 백그라운드 상태에서 비활성화된 상태로 바뀔 때 호출됨.
         Backgorund -> Inactive
         백그라운드  상태로 바뀌면서 저장된 앱  의 데이터는  이 메소드 안에서 복구함.
         */
        
        //NSLog("applicationWillEnterForeground 호출됨.")
        NSLog("sceneWillEnterForeground 호출됨.")
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        
        /*
         만약 앱이 백그라운드 모드를 지원하는 경우에는 사용자가 앱을 종료시킬 때 applicationWillTereminate (sceneDidDisconnect)대신 이 메소드가 호출됨.
         Inactive -> Background
         */
        
        //NSLog("applicationDidEnterBackground호출됨.")
        NSLog("sceneDidEnterBackground호출됨.")
        
        
        NotificationCenter.default.post(name : NSNotification.Name("SceneDidEnterBackground"),object: nil)
    }


}

