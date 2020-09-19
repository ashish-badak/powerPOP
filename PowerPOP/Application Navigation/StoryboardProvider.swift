//
//  StoryboardProvider.swift
//  PowerPOP
//
//  Created by Ashish Badak on 19/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

protocol StoryboardProvider {
    var storyboardName: String { get }
    var storyboardBundle: Bundle? { get }
    func getStoryboard() -> UIStoryboard
}

extension StoryboardProvider {
    func getStoryboard() -> UIStoryboard {
        UIStoryboard(name: storyboardName, bundle: storyboardBundle)
    }
}
