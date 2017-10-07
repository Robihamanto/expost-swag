//
//  ProductCell.swift
//  expost-swag
//
//  Created by Robihamanto on 07/10/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateView(product: Product){
        print(product.imageName)
        productImage.image = UIImage(named: product.imageName)
        productLabel.text = product.label
        productPrice.text = product.price
    }
    
}
