//
//  HouseRequestEndPoint.swift
//  PowerPOP
//
//  Created by Ashish Personal on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

enum HouseRequestEndPoint: GetRequestEndPoint {
    case houseList
    case house(slug: String)
    
    var path: String {
        switch self {
        case .houseList:
            return "/houses"
        case .house(let slug):
            return "/house/\(slug)"
        }
    }
    
    var parameters: Params? { nil }
}
