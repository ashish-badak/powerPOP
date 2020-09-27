//
//  HouseRequestManager.swift
//  PowerPOP
//
//  Created by Ashish Personal on 27/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import Foundation

final class HouseRequestManager {
    /// - TODO: Return mapped data via completion handler
    func getHouses() {
        let requestBuilder = RequestBuilder(requestEndPoint: HouseRequestEndPoint.houseList)
        DefaultNetworkService().request(
            requestBuilder,
            validator: DefaultAPIResponseValidator()
        ) { (result) in
            switch result {
            case .success(let data):
                /// - TODO: Map data to Models
                if let string = String(data: data, encoding: .utf8) {
                    print("Result: \(string)")
                }
                
            case .failure(let error):
                print("Error: \(error.description)")
            }
        }
    }
    
    /// - TODO: Return mapped data via completion handler
    func getHouse(slug: String) {
        let requestBuilder = RequestBuilder(requestEndPoint: HouseRequestEndPoint.house(slug: slug))
        
        DefaultNetworkService().request(
            requestBuilder,
            validator: DefaultAPIResponseValidator()
        ) { (result) in
            switch result {
            case .success(let data):
                /// - TODO: Map data to Models
                if let string = String(data: data, encoding: .utf8) {
                    print("Result: \(string)")
                }
                
            case .failure(let error):
                print("Error: \(error.description)")
            }
        }
    }
}
