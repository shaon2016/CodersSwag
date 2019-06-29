//
//  CategoriesCell.swift
//  CodersSwag
//
//  Created by Shaon on 6/25/19.
//  Copyright © 2019 Shaon. All rights reserved.
//

import UIKit

class CategoriesCell: UITableViewCell {

    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catTitle: UILabel!
    
    func updateViews(category:Category) {
        catImage.image = UIImage(named: category.imageName)
        catTitle.text = category.catTitle
    }

}
