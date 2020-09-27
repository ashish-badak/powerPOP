//
//  APIRequestError.swift
//  PowerPOP
//
//  Created by Ashish Personal on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

enum APIRequestError: Error {
    case missingURL
}

extension APIRequestError: CustomStringConvertible {
    var description: String {
        switch self {
        case .missingURL:
            return "URL is missing or it is invalid"
        }
    }
}
