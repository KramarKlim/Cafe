//
//  KebabViews.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit

class KebabViews {
    static let shared = KebabViews()
    
    private init() {}
    
    let menu = ["Шаверма с говядиной", "Шаверма в тарелке", "Шаверма с курицей"]
    
    let images = [UIImage(named: "govyadina"), UIImage(named: "tarelka"), UIImage(named: "kurica")]
}
