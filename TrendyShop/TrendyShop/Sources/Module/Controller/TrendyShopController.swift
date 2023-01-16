//
//  ViewController.swift
//  TrendyShop
//
//  Created by Александр Косяков on 16.01.2023.
//

import UIKit

final class TrendyShopController: UIViewController {
    
    // MARK: - Properties

    private let trendyView = TrendyView()
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = trendyView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

        

