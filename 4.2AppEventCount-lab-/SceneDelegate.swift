//
//  SceneDelegate.swift
//  4.2AppEventCount-lab-
//
//  Created by Sophie Kim on 2020/09/04.
//  Copyright © 2020 Sophie Kim. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var myViewController: ViewController?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        myViewController = window?.rootViewController as? ViewController
        myViewController?.launchCount += 1
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        myViewController?.disconnectCount += 1
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        myViewController?.becomeActiveCount += 1
        myViewController?.updateView()
    }

    func sceneWillResignActive(_ scene: UIScene) {
        myViewController = window?.rootViewController as? ViewController
        myViewController?.resignActiveCount += 1
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        myViewController = window?.rootViewController as? ViewController
        myViewController?.foregroundCount += 1
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        myViewController = window?.rootViewController as? ViewController
        myViewController?.backgroundCount += 1
    }


}

