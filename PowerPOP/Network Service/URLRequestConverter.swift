//
//  URLRequestConverter.swift
//  PowerPOP
//
//  Created by Ashish Personal on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

protocol URLRequestConverter {
    func urlRequest() -> URLRequest?
}

struct RequestBuilder: URLRequestConverter {
    let requestEndPoint: RequestEndPoint
    
    func urlRequest() -> URLRequest? {
        guard let baseURL = URL(string: requestEndPoint.baseURL) else {
            return nil
        }

        var urlRequest = URLRequest(
            url: baseURL.appendingPathComponent(requestEndPoint.path),
            cachePolicy: .reloadIgnoringLocalAndRemoteCacheData,
            timeoutInterval: 10.0
        )
        
        urlRequest.httpMethod = requestEndPoint.httpMethod.rawValue
        urlRequest.allHTTPHeaderFields = requestEndPoint.headers
        
        do {
            if let encoder = requestEndPoint.encoding {
                try encoder.encode(urlRequest: &urlRequest, with: requestEndPoint.parameters ?? [:])
            }
            return urlRequest
        } catch( _) {
            return urlRequest
        }
    }
}
