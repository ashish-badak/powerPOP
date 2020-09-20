//
//  Storyboard.swift
//  PowerPOP
//
//  Created by Ashish Personal on 19/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation
import UIKit

enum Storyboard: StoryboardProvider {
    case main
    case listing
    
    var storyboardName: String {
        switch self {
        case .main: return "Main"
        case .listing: return "Listing"
        }
    }
    
    var storyboardBundle: Bundle? {
        switch self {
        default: return nil
        }
    }
}
