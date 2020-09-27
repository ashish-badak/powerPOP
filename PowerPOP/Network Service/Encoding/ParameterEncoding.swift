//
//  ParameterEncoding.swift
//  PowerPOP
//
//  Created by Ashish Badak on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

protocol ParameterEncoder {
    func encode(urlRequest: inout URLRequest, with params: Params) throws
}
