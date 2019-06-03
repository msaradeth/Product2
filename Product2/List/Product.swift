//
//  Product.swift
//  Product2
//
//  Created by Mike Saradeth on 6/3/19.
//  Copyright © 2019 Mike Saradeth. All rights reserved.
//

import Foundation
import UIKit

struct Product: Codable {
    var id: String
    var name: String
    var description: String
    var price: Double
    var thumbnailUrlString: String
    var imageUrlString: String
    
    var isFavorite: Bool?
    var thumbnailImage: UIImage?
    var image: UIImage?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case price
        case thumbnailUrlString = "thumbnail_url"
        case imageUrlString = "image_url"
    }
}
