//
//  ViewController.swift
//  TrendyShop
//
//  Created by Александр Косяков on 16.01.2023.
//

import UIKit

class TrendyShopController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationItem()
    }
    
    
    
    private func setupNavigationItem() {
        createCustomNavigationBar()
        
        let customTitleView = createCustomTitleView(
            personButton: "",
            searchButton: "",
            tittleImage: "",
            shopButton: "",
            menuButton: ""
        )
        
        navigationItem.titleView = customTitleView
    }
}

        

