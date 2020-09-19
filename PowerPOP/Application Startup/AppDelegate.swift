//
//  AppDelegate.swift
//  PowerPOP
//
//  Created by Ashish Personal on 19/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow()
        window?.rootViewController = UINavigationController(rootViewController: ViewController.instantiate())
        window?.makeKeyAndVisible()
        
        return true
    }
}
