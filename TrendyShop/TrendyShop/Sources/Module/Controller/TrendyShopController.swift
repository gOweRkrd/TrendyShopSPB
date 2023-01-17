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
        let contentView = TrendyView()
        contentView.frame.size = contentSize
        return contentView
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 400)
    }
    
    // MARK: - Lifecycle
    
//    override func loadView() {
//        self.view = trendyView
//    }
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
//        collectionViewFirst.delegate = self
//        collectionViewFirst.dataSource = self
        
//        trendyView.collectionViewSecond.delegate = self
//        trendyView.collectionViewSecond.dataSource = self
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
        return dataFirstCV.count
        
//        switch collectionView {
//
//            case trendyView.collectionViewFirst:
//                return dataFirstCV.count
//
//            default:
//                return dataSecondCV.count
//        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellFirst", for: indexPath) as! CollectionCellFirst
                              cell.data = dataFirstCV[indexPath.item]
                              return cell
        
//        switch collectionView {
//
//            case trendyView.collectionViewFirst:
//
//                switch indexPath.row {
//                    case 0:
//                        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellFirst", for: indexPath) as! CollectionCellFirst
//                        cell.data = dataFirstCV[indexPath.item]
//                        return cell
//
//                    default:
//                        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellSecond", for: indexPath) as! CollectionCellSecond
//                        cell.data = dataSecondCV[indexPath.item]
//                        return cell
//                }
//            default:
//                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellSecond", for: indexPath) as! CollectionCellSecond
//                cell.data = dataSecondCV[indexPath.item]
//                return cell
//        }
    }
//}

// MARK: - CollectionViewDelegateFlowLayout

//extension TrendyShopController: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        //
//        return CGSize(width: collectionView.frame.width / 2.5, height: collectionView.frame.width / 3)
//    }
        
//        switch collectionView {
//
//            case trendyView.collectionViewSecond:
//                switch indexPath.row {
//                    case 0:
//                        return CGSize(width: collectionView.frame.width / 2.5, height: collectionView.frame.width / 3)
//
//                    case 1:
//                        return CGSize(width: collectionView.frame.width / 2.5, height: collectionView.frame.width / 3)
//
//                    default:
//                        return CGSize(width: collectionView.frame.width / 2.5, height: collectionView.frame.width / 3)
//                }
//
//
//            default:
//                return CGSize(width: collectionView.frame.width / 2.5, height: collectionView.frame.width / 3)
//        }
    }
//}


