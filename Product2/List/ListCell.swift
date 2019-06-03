//
//  ListCell.swift
//  Product2
//
//  Created by Mike Saradeth on 6/3/19.
//  Copyright © 2019 Mike Saradeth. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {
    static let cellIdentifier = "Cell"
   
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    
    
    func configure(item: Product) {
        self.productName.text = item.name
        self.productDescription.text = String("$\(item.price/100.0)")
    }
}
