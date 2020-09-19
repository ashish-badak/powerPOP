//
//  StoryboardInstantiable.swift
//  PowerPOP
//
//  Created by Ashish Personal on 19/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable {
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle? { get }
    static var storyboardIdentifier: String { get }
    
    static func instantiate() -> Self
}

extension StoryboardInstantiable where Self: UIViewController {
    static var storyboardBundle: Bundle? { nil }
    static var storyboardIdentifier: String { String(describing: self) }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        
        guard let viewController = storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as? Self else {
            fatalError("Failed to load \(storyboardIdentifier) from \(storyboardName) storyboard.")
        }
        
        return viewController
    }
}
