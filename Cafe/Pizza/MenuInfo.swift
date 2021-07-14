//
//  MenuInfo.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit

class MenuInfo {
    static let shared = MenuInfo()
    
    private init() {}
    
    let images = [UIImage(named: "pizza"), UIImage(named: "sushi"), UIImage(named: "kebab"), UIImage(named: "burger")]
    let names = ["Пицца", "Суши", "Шаверма", "Бургер" ]
}
