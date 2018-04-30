//
//  HomeRecipesCollectionViewItem.swift
//  MyRecipes
//
//  Created by Vincent on 30/04/2018.
//  Copyright © 2018 Vincent. All rights reserved.
//

import UIKit

class HomeRecipeCollectionViewCell: UICollectionViewCell {
    
    // MARK: - UI
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Pasta & Risotto"
        label.font = UIFont(name: "SFProText-Regular", size: 21)
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

extension HomeRecipeCollectionViewCell: Designable {
    
    func setupUI() {
        backgroundColor = Colors.mainPurle
        layer.cornerRadius = 8
        layer.shadowOffset = CGSize(width: -5, height: -2)
        layer.shadowColor = UIColor.black.cgColor
        
        addSubview(nameLabel)
        nameLabel.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 15, paddingRight: 0, width: 0, height: 0)
    }
    
}
