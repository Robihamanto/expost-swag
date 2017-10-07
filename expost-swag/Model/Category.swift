//
//  Category.swift
//  expost-swag
//
//  Created by Robihamanto on 07/10/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import Foundation
struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(categoryTitle title:String, categoryImageName imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
