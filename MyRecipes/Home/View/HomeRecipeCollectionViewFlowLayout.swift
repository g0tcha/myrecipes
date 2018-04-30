//
//  HomeRecipeCollectionViewFlowLayout.swift
//  MyRecipes
//
//  Created by Vincent on 30/04/2018.
//  Copyright © 2018 Vincent. All rights reserved.
//

import UIKit

class HomeRecipeCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        scrollDirection = .horizontal
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
