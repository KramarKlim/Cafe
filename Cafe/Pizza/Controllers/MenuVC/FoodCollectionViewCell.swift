//
//  FoodCollectionViewCell.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {

    @IBOutlet var foodImage: UIImageView!
    
    @IBOutlet var foodNameLabel: UILabel!
    
    func configure(name: String?, image: UIImage?) {
        self.foodImage.image = image
        self.foodNameLabel.text = name
    }

}
