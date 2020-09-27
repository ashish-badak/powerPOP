//
//  RequestEndPoint.swift
//  PowerPOP
//
//  Created by Ashish Personal on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

protocol RequestEndPoint {
    var baseURL: String { get }
    var path: String { get }
    
    var parameters: [String: AnyObject]? { get }
    var headers: HTTPHeaders { get }
    
    var httpMethod: HTTPMethod { get }
    var encoding: ParameterEncoder { get }
}
