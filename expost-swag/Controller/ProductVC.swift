//
//  ProductVC.swift
//  expost-swag
//
//  Created by Robihamanto on 07/10/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productCollection: UICollectionView!
    
    private (set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        productCollection.dataSource = self
        productCollection.delegate = self
    }

    func initProducts(category: Category){
        self.products = DataServices.instance.getProduct(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return self.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        return ProductCell()
    }

    
    
    
    
    
    
    
    
}
