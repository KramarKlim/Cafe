//
//  BurgerViews.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit

class BurgerViews {
    static let shared = BurgerViews()
    
    private init() {}
    
    let menu = ["Чизбургер", "Гамбургер", "Чикенбургер"]
    
    let images = [UIImage(named: "cheesburger"), UIImage(named: "gamburger"), UIImage(named: "chickenburger")]
}
