//
//  CategoryCell.swift
//  expost-swag
//
//  Created by Robihamanto on 07/10/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!

    func updateView(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }

}
