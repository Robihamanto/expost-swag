//
//  Product.swift
//  expost-swag
//
//  Created by Robihamanto on 07/10/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import Foundation
class Product{
    private (set) public var imageName: String
    private (set) public var label: String
    private (set) public var price: String
    
    init(imageNameOfProduct imageName: String, labelOfProduct label: String,priceProduct price: String) {
        self.imageName = imageName
        self.label = label
        self.price = price
    }
}
