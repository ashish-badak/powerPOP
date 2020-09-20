//
//  UITabBarItemExtension.swift
//  PowerPOP
//
//  Created by Ashish Personal on 20/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

extension UITabBarItem {
    static var houses: Self {
        .init(
            title: "Houses",
            image: UIImage(named: "houses")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "houses-selected")?.withRenderingMode(.alwaysOriginal)
        )
    }
    
    static var characters: Self {
        .init(
            title: "Characters",
            image: UIImage(named: "characters")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "characters-selected")?.withRenderingMode(.alwaysOriginal)
        )
    }
}
