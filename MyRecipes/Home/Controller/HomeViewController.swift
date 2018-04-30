//
//  ViewController.swift
//  MyRecipes
//
//  Created by Vincent on 28/04/2018.
//  Copyright © 2018 Vincent. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    // MARK: - UI
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = Colors.mainPurle
        imageView.layer.cornerRadius = 42 / 2
        return imageView
    }()
    
    let helloMessageLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.mainPurle
        label.numberOfLines = 0
        
        let attributedText = NSMutableAttributedString(string: "Hello,\n", attributes: [NSAttributedStringKey.font: UIFont(name: "SFProText-Regular", size: 11)!])
        attributedText.append(NSAttributedString(string: "Mégane Di Stefano", attributes: [NSAttributedStringKey.font: UIFont(name: "SFProText-Regular", size: 15)!]))
        label.attributedText = attributedText
        
        return label
    }()
    
    let searchTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.mainPurle
        label.numberOfLines = 0
        label.text = "What do you want\nto cook today?"
        label.font = UIFont(name: "SFProText-Bold", size: 30)
        
        return label
    }()
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search"
        searchBar.barTintColor = .white
        return searchBar
    }()
    
    let collectionView: HomeRecipeCollectionView = {
        let collectionViewFlowLayout = HomeRecipeCollectionViewFlowLayout()
        let collectionView = HomeRecipeCollectionView(frame: CGRect(), collectionViewLayout: collectionViewFlowLayout)
        return collectionView
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

extension HomeViewController: Designable {
    
    func setupUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.backgroundColor = .white
        
        view.addSubview(profileImageView)
        profileImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 42, height: 42)
        
        view.addSubview(helloMessageLabel)
        helloMessageLabel.anchor(top: profileImageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 8, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        view.addSubview(searchTitleLabel)
        searchTitleLabel.anchor(top: helloMessageLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 50, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        view.addSubview(searchBar)
        searchBar.anchor(top: searchTitleLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 0)
        
        view.addSubview(collectionView)
        collectionView.selectionDelegate = self
        collectionView.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 15, paddingBottom: 15, paddingRight: 15, width: 0, height: 300)
    }
    
}

extension HomeViewController: HomeRecipeCollectionViewProtocol {
    
    func homeRecipeCollectionViewDidSelectItem() {
        let categoryController = CategoryViewController()
        
        navigationController?.navigationBar.barTintColor = Colors.mainPurle
        navigationController?.pushViewController(categoryController, animated: true)
    }
    
}

