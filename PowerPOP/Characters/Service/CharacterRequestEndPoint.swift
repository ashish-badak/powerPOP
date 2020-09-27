//
//  CharacterRequestEndPoint.swift
//  PowerPOP
//
//  Created by Ashish Personal on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

enum CharacterRequestEndPoint: GetRequestEndPoint {
    case characterList
    case character(slug: String)
    
    var path: String {
        switch self {
        case .characterList:
            return "/characters"
        case .character(let slug):
            return "/character/\(slug)"
        }
    }
    
    var parameters: Params? { nil }
}
