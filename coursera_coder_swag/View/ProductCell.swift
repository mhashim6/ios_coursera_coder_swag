//
//  ProductCellCollectionViewCell.swift
//  coursera_coder_swag
//
//  Created by Muhammad Hashim on 1/21/20.
//  Copyright © 2020 Muhammad Hashim. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    func updateProduct(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.title
        productPrice.text = product.price
    }
}
