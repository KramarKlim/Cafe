//
//  CusomListCollectionViewCell.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit

class CusomListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var itemImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    
    func configure(image: UIImage?, name: String?) {
        self.itemImage.image = image
        self.nameLabel.text = name
    }
    
}
