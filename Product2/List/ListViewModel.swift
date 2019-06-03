//
//  ListViewModel.swift
//  Product2
//
//  Created by Mike Saradeth on 6/3/19.
//  Copyright © 2019 Mike Saradeth. All rights reserved.
//

import Foundation

class ListViewModel: NSObject {
    var items: [Product]
    var productService: ProductService
    
    init(items: [Product], productService: ProductService) {
        self.items = items
        self.productService = productService
    }
    
    func loadData(completion: @escaping () -> Void) {
        productService.loadData { [weak self] (items) in
            self?.items = items
            completion()
        }        
    }
}
