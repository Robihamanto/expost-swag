//
//  Services.swift
//  expost-swag
//
//  Created by Robihamanto on 07/10/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import Foundation
class DataServices{
    static let instance = DataServices()
    
    private let categories = [
        Category(categoryTitle: "SHIRTS", categoryImageName: "shirts.png"),
        Category(categoryTitle: "HOODIES", categoryImageName: "hoodies.png"),
        Category(categoryTitle: "HATS", categoryImageName: "hats.png"),
        Category(categoryTitle: "DIGITAL", categoryImageName: "digital.png")
    ]
    
    private let hats = [
        Product(imageNameOfProduct: "hat01.png", labelOfProduct: "Expost Logo Ghraphics beanea", priceProduct: "$18"),
        Product(imageNameOfProduct: "hat02.png", labelOfProduct: "Expost Logo Hat Black", priceProduct: "$22"),
        Product(imageNameOfProduct: "hat03.png", labelOfProduct: "Expost Logo Hat White", priceProduct: "$20"),
        Product(imageNameOfProduct: "hat04.png", labelOfProduct: "Expost Logo Snapback", priceProduct: "$25"),
    ]
    
    private let hoodies = [
        Product(imageNameOfProduct: "hoodie01.png", labelOfProduct: "Expost Logo Hoodie Grey", priceProduct: "$32"),
        Product(imageNameOfProduct: "hoodie02.png", labelOfProduct: "Expost Logo Hoodie Red", priceProduct: "$30"),
        Product(imageNameOfProduct: "hoodie03.png", labelOfProduct: "Expost Logo Hoodie Grey", priceProduct: "$30"),
        Product(imageNameOfProduct: "hoodie04.png", labelOfProduct: "Expost Hoodie Black", priceProduct: "$31"),
        ]
    
    private let shirts = [
        Product(imageNameOfProduct: "shirt01.png", labelOfProduct: "Expost Logo Ghraphics beanea", priceProduct: "$18"),
        Product(imageNameOfProduct: "shirt02.png", labelOfProduct: "Expost Logo Hat Black", priceProduct: "$19"),
        Product(imageNameOfProduct: "shirt03.png", labelOfProduct: "Expost Logo Hat White", priceProduct: "$20"),
        Product(imageNameOfProduct: "shirt04.png", labelOfProduct: "Expost Logo Snapback", priceProduct: "$18"),
        ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProduct(forCategoryTitle category: String) -> [Product] {
        switch category {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodie()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL":
            return getDigital()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodie() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigital() -> [Product] {
        return digitalGoods
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
