//
//  DashboardTabbarViewController.swift
//  PowerPOP
//
//  Created by Ashish Personal on 20/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

final class DashboardTabbarViewController: UITabBarController, StoryboardInstantiable {
    static var storyboardProvider: StoryboardProvider { Storyboard.main }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbar()
    }
    
    private func setupTabbar() {
        let tabs = getTabs()
        viewControllers = tabs.map { $0.getController() }
        tabBar.tintColor = .red
    }
    
    private func getTabs() -> [TabbarComponent] {
        [DashboardTabbarComponent.houses, DashboardTabbarComponent.characters]
    }
}
