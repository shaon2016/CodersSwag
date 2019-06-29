//
//  PropertyCell.swift
//  CodersSwag
//
//  Created by Shaon on 6/28/19.
//  Copyright © 2019 Shaon. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productName: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product : Product) {
        productName.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }

}
