//
//  ViewController.swift
//  PowerPOP
//
//  Created by Ashish Badak on 19/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StoryboardInstantiable {
    static var storyboardName: String { Storyboard.main.rawValue }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
}

