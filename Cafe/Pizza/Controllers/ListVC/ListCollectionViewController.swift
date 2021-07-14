//
//  ListCollectionViewController.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit


class ListCollectionViewController: UICollectionViewController {
    
    var list: [String?] = []
    var images: [UIImage?] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    // MARK: UICollectionViewDataSource



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(list.count)
        return list.count


    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "custom", for: indexPath) as! CusomListCollectionViewCell
        let image = images[indexPath.row]
        let name = list[indexPath.row]
        cell.configure(image: image, name: name)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let itemVC = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else { return }
        let image = images[indexPath.row]
        let name = list[indexPath.row]
        itemVC.name = name
        itemVC.image = image
        present(itemVC, animated: true, completion: nil)
    }
}
