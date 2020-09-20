//
//  DashboardTabbarComponent.swift
//  PowerPOP
//
//  Created by Ashish Badak on 20/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

enum DashboardTabbarComponent: TabbarComponent {
    case houses
    case characters
    
    var tabbarItem: UITabBarItem {
        switch self {
        case .houses: return .houses
        case .characters: return .characters
        }
    }
    
    func getController() -> UIViewController {
        switch self {
        case .houses:
            return HouseListViewController.make(usingTabbarItem: tabbarItem)
        case .characters:
            return CharacterListViewController.make(usingTabbarItem: tabbarItem)
        }
    }
}
