//
//  SushiViews.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit

class SushiViews {
    
    static let shared = SushiViews()
    
    private init() {}
    
    let menu = ["Филадельфия", "Калифорния"]
    
    let images = [UIImage(named: "philadelphia"), UIImage(named: "california")]
}
