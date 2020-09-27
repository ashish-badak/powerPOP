//
//  HTTPMethod.swift
//  PowerPOP
//
//  Created by Ashish Badak on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

typealias Params = [String: Any]
typealias HTTPHeaders = [String: String]

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}
