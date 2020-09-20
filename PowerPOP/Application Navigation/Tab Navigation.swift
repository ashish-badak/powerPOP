//
//  Tab Navigation.swift
//  PowerPOP
//
//  Created by Ashish Personal on 20/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

protocol TabbarComponent {
    var tabbarItem: UITabBarItem { get }
    func getController() -> UIViewController
}

protocol TabbarCompatibleController {
    static func make(usingTabbarItem item: UITabBarItem) -> UIViewController
}

extension TabbarCompatibleController where Self: StoryboardInstantiable, Self: UIViewController {
    static func make(usingTabbarItem item: UITabBarItem) -> UIViewController {
        let controller = Self.instantiate()
        controller.tabBarItem = item
        controller.title = item.title
        return TabNavigationWrapper.wrap(controller: controller)
    }
}
