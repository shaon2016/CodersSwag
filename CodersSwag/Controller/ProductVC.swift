//
//  ProductVC.swift
//  CodersSwag
//
//  Created by Shaon on 6/29/19.
//  Copyright © 2019 Shaon. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productCollectionView : UICollectionView!
    
    private var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }
   
    func initProducts(category : Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.catTitle)
        navigationItem.title = category.catTitle
    }

}
