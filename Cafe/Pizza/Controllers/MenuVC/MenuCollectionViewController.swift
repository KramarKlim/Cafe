//
//  MenuCollectionViewController.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit


class MenuCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }



    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return MenuInfo.shared.images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FoodCollectionViewCell
        let images = MenuInfo.shared.images[indexPath.row]
        let names = MenuInfo.shared.names[indexPath.row]
        cell.configure(name: names, image: images)
    

    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let itemVC = self.storyboard?.instantiateViewController(identifier: "ListCollectionViewController") as? ListCollectionViewController else { return }
        if indexPath.row == 0 {
            itemVC.list = PizzaViews.shared.menuPizza
            itemVC.images = PizzaViews.shared.imagesPizza
            self.navigationController?.pushViewController(itemVC, animated: true)
        }
        if indexPath.row == 1 {
            itemVC.list = SushiViews.shared.menu
            itemVC.images = SushiViews.shared.images
            self.navigationController?.pushViewController(itemVC, animated: true)
        }
        if indexPath.row == 2 {
            itemVC.list = KebabViews.shared.menu
            itemVC.images = KebabViews.shared.images
            self.navigationController?.pushViewController(itemVC, animated: true)
        }
        if indexPath.row == 3 {
            itemVC.list = BurgerViews.shared.menu
            itemVC.images = BurgerViews.shared.images
            self.navigationController?.pushViewController(itemVC, animated: true)
        }
    }


}
