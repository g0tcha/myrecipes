//
//  HomeRecipesCollectionView.swift
//  MyRecipes
//
//  Created by Vincent on 30/04/2018.
//  Copyright © 2018 Vincent. All rights reserved.
//

import UIKit

protocol HomeRecipeCollectionViewProtocol {
    func homeRecipeCollectionViewDidSelectItem()
}

class HomeRecipeCollectionView: UICollectionView {
    
    var selectionDelegate: HomeRecipeCollectionViewProtocol?
    
    // MARK: - Initializers
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        dataSource = self
        delegate = self
        
        backgroundColor = .white
        showsHorizontalScrollIndicator = false
        
        register(HomeRecipeCollectionViewCell.self, forCellWithReuseIdentifier: "HomeRecipeCell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - UICollectionViewDataSource

extension HomeRecipeCollectionView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeRecipeCell", for: indexPath) as! HomeRecipeCollectionViewCell
        return cell
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension HomeRecipeCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSize = CGSize(width: 260, height: 270)
        return itemSize
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectionDelegate?.homeRecipeCollectionViewDidSelectItem()
    }
    
}
