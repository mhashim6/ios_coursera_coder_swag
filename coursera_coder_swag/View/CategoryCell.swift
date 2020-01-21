//
//  CategoryCell.swift
//  coursera_coder_swag
//
//  Created by Muhammad Hashim on 1/21/20.
//  Copyright © 2020 Muhammad Hashim. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var catImg: UIImageView!
    @IBOutlet weak var catLabel: UILabel!
    
    func updateCell(category: Category){
        catImg.image = UIImage(named: category.image)
        catLabel.text = category.title
    }
}
