//
//  NavigationWrapper.swift
//  PowerPOP
//
//  Created by Ashish Personal on 20/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

protocol NavigationWrapper {
    static func wrap(controller: UIViewController) -> UINavigationController
}

extension NavigationWrapper {
    static func wrap(controller: UIViewController) -> UINavigationController {
        UINavigationController(rootViewController: controller)
    }
}

struct DefaultNavigationWrapper: NavigationWrapper { }

struct TabNavigationWrapper: NavigationWrapper {
    static func wrap(controller: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: controller)
        navigationController.navigationBar.prefersLargeTitles = true
        return navigationController
    }
}
