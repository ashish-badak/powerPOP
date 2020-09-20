//
//  CharacterListViewController.swift
//  PowerPOP
//
//  Created by Ashish Badak on 20/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

class CharacterListViewController: UIViewController, StoryboardInstantiable, TabbarCompatibleController {
    static var storyboardProvider: StoryboardProvider { Storyboard.listing }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
