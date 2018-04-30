//
//  CategoryViewController.swift
//  MyRecipes
//
//  Created by Vincent on 30/04/2018.
//  Copyright © 2018 Vincent. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    // MARK: - UI
    
    let collectionView: CategoryCollectionView = {
        let collectionView = CategoryCollectionView(frame: CGRect(), collectionViewLayout: UICollectionViewFlowLayout())
        return collectionView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .white
        
        let attributedText = NSMutableAttributedString(string: "Pasta & Risotto", attributes: [NSAttributedStringKey.font: UIFont(name: "SFProText-Bold", size: 22)!])
        attributedText.append(NSAttributedString(string: "\n32 recipes available", attributes: [NSAttributedStringKey.font: UIFont(name: "SFProText-Regular", size: 12)!]))
        
        label.attributedText = attributedText
        return label
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

// MARK: - Designable

extension CategoryViewController: Designable {
    
    func setupUI() {
        view.backgroundColor = Colors.mainPurle
        
        view.addSubview(collectionView)
        collectionView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 250, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        view.addSubview(titleLabel)
        titleLabel.anchor(top: nil, left: view.leftAnchor, bottom: collectionView.topAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 15, paddingBottom: 15, paddingRight: 15, width: 0, height: 0)
    }
    
}
