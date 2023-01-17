//
//  ViewController.swift
//  TrendyShop
//
//  Created by Александр Косяков on 16.01.2023.
//

import UIKit

final class TrendyShopController: UIViewController {
    
    // MARK: - Properties

    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.frame = self.view.bounds
        scrollView.contentSize = contentSize
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = TrendyView()
        contentView.frame.size = contentSize
        return contentView
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 400)
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
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
