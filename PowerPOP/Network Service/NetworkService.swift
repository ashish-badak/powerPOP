//
//  NetworkService.swift
//  PowerPOP
//
//  Created by Ashish Personal on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

typealias NetworkRouterCompletion = (Result<Data, APIRequestError>) -> ()

protocol NetworkService: AnyObject {
    func request(_ requestBuilder: URLRequestConverter, validator: APIResponseValidator, completion: @escaping NetworkRouterCompletion)
    func cancel()
}

final class DefaultNetworkService: NetworkService {
    private var task: URLSessionTask?

    func request(
        _ requestBuilder: URLRequestConverter,
        validator: APIResponseValidator,
        completion: @escaping NetworkRouterCompletion
    ) {
        
        guard let urlRequest = requestBuilder.urlRequest() else {
            completion(.failure(.missingURL))
            return
        }
        
        task = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
            
            guard let response = urlResponse as? HTTPURLResponse else {
                completion(.failure(.invalidResponse))
                return
            }
            
            let result = validator.validate(response: response)
            switch result {
            case .success:
                if let data = data {
                    completion(.success(data))
                } else {
                    completion(.failure(.noData))
                }
                
            case .failure(let error):
                completion(.failure(error))
            }
        }
        task?.resume()
    }
    
    func cancel() {
        task?.cancel()
    }
}
