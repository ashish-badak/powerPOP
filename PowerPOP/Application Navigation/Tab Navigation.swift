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
