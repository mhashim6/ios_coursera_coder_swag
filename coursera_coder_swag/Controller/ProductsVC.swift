//
//  ProductsVC.swift
//  coursera_coder_swag
//
//  Created by Muhammad Hashim on 1/21/20.
//  Copyright © 2020 Muhammad Hashim. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(of category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        print(products)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            cell.updateProduct(product: products[indexPath.row])
            return cell
        }
        return ProductCell() //will never happen
    }
}
