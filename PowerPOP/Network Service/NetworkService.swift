//
//  NetworkService.swift
//  PowerPOP
//
//  Created by Ashish Personal on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

typealias NetworkRouterCompletion = (_ data: Data?,_ response: URLResponse?,_ error: Error?)->()

protocol NetworkService: AnyObject {
    func request(_ route: URLRequestConverter, completion: @escaping NetworkRouterCompletion)
    func cancel()
}

final class DefaultNetworkService: NetworkService {
    private var task: URLSessionTask?

    func request(_ requestBuilder: URLRequestConverter, completion: @escaping NetworkRouterCompletion) {
        guard let urlRequest = requestBuilder.urlRequest() else {
            completion(nil, nil, APIRequestError.missingURL)
            return
        }
        
        task = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
            completion(data, urlResponse, error)
        }
        task?.resume()
    }
    
    func cancel() {
        task?.cancel()
    }
}

