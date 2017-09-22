//
//  AppDelegate.swift
//  Running
//
//  Created by Nick Lee on 2017/9/6.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let tabBarController = TabBarController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = tabBarController

        window?.makeKeyAndVisible()
        
        return true
    }

}

