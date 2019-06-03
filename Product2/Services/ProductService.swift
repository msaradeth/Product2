//
//  ProductService.swift
//  Product2
//
//  Created by Mike Saradeth on 6/3/19.
//  Copyright © 2019 Mike Saradeth. All rights reserved.
//

import Foundation


class ProductService: NSObject {
    struct PodsService: Codable {
        var pods: [Product]
        
        enum CodingKeys: String, CodingKey {
            case pods
        }
    }
    
    
    func loadData(completion: @escaping ([Product]) -> Void) {
        let urlString = "https://s3.us-east-2.amazonaws.com/juul-coding-challenge/products.json"
        
        HttpHelp.request(urlString, method: .get, params: nil, success: { (dataResponse) in
            do {
                let decoder = JSONDecoder()
                let podsService = try decoder.decode(PodsService.self, from: dataResponse.data!)
                completion(podsService.pods)
                
            }catch let error {
                fatalError(error.localizedDescription)
            }
            
        }) { (error) in
            fatalError(error.localizedDescription)
        }
    }
}

