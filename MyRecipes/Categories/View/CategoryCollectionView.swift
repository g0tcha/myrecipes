//
//  CategoryCollectionView.swift
//  MyRecipes
//
//  Created by Vincent on 30/04/2018.
//  Copyright © 2018 Vincent. All rights reserved.
//

import UIKit

class CategoryCollectionView: UICollectionView {
    
    let cellIdentifier = "recipeCell"
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        dataSource = self
        delegate = self
        
        register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

// MARK: - Designable

extension CategoryCollectionView: Designable {
    func setupUI() {
        backgroundColor = .white
    }
}

// MARK: - UICollectionViewDataSource

extension CategoryCollectionView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as UICollectionViewCell
        cell.backgroundColor = .green
        return cell
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension CategoryCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSize = CGSize(width: frame.width - 2 * 15, height: 250)
        return itemSize
    }
    
}
