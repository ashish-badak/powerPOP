//
//  AppDelegate.swift
//  PowerPOP
//
//  Created by Ashish Badak on 19/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow()
        window?.rootViewController = DashboardTabbarViewController.instantiate()
        window?.makeKeyAndVisible()
        
        return true
    }
}
