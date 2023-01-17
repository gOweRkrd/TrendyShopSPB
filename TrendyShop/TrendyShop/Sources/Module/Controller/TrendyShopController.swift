//
//  ViewController.swift
//  TrendyShop
//
//  Created by Александр Косяков on 16.01.2023.
//

import UIKit

final class TrendyShopController: UIViewController, UICollectionViewDelegate {

    // MARK: - Properties

    let trendyView = TrendyView()

    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.frame = self.view.bounds
        scrollView.contentSize = contentSize
        return scrollView
    }()

    private lazy var contentView: UIView = {
        let contentView = trendyView
        contentView.frame.size = contentSize
        return contentView
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()

        view.addSubview(scrollView)
        scrollView.addSubview(contentView)

        trendyView.collectionViewFirst.delegate = self
        trendyView.collectionViewFirst.dataSource = self

        trendyView.collectionViewSecond.delegate = self
        trendyView.collectionViewSecond.dataSource = self
    }
    // MARK: - Private Methods
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 900)
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

// MARK: - CollectionViewDataSource

extension TrendyShopController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {

        case trendyView.collectionViewFirst:
                return dataFirstCV.count

        case trendyView.collectionViewSecond:
                return dataSecondCV.count

        default:
                return 0
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        switch collectionView {

        case trendyView.collectionViewFirst:

                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellFirst", for: indexPath) as! CollectionCellFirst
                cell.data = dataFirstCV[indexPath.item]
                return cell

        case trendyView.collectionViewSecond:

                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellSecond", for: indexPath) as! CollectionCellSecond
                cell.data = dataSecondCV[indexPath.item]
                return cell

        default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellSecond", for: indexPath) as! CollectionCellSecond
                cell.data = dataSecondCV[indexPath.item]
                return cell
        }
    }
}

// MARK: - CollectionViewDelegateFlowLayout

extension TrendyShopController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: collectionView.frame.width / 2, height: collectionView.frame.width / 1)
    }
}
