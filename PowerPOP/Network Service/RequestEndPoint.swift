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
    
    var parameters: Params? { get }
    var headers: HTTPHeaders { get }
    
    var httpMethod: HTTPMethod { get }
    var encoding: ParameterEncoder? { get }
}

extension RequestEndPoint {
    var baseURL: String { "https://game-of-thrones-quotes.herokuapp.com" }
    var headers: HTTPHeaders { [:] }
    var encoding: ParameterEncoder? { nil }
}

protocol GetRequestEndPoint: RequestEndPoint { }

extension GetRequestEndPoint {
    var httpMethod: HTTPMethod { .get }
}

protocol APIVersioning {
    var apiVersion: String { get }
}

extension APIVersioning {
    var apiVersion: String { "v1" }
}

typealias VersionedGetRequestEndPoint = GetRequestEndPoint & APIVersioning
