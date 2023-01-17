//
//  TrendyView.swift
//  TrendyShop
//
//  Created by Александр Косяков on 16.01.2023.
//

import UIKit

final class TrendyView: UIView {
    
    // MARK: - UI Elements
    
    lazy var imageViewMain: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "imageTittle")
        return imageView
    }()
    
    lazy var descriptionLabel: UILabel = {
        
        let label = UILabel()
        label.text = "ЖАКЕТ УДЛИНЕННЫЙ,БЕЛЫЙ"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .right
        label.textColor = .black
        return label
    }()
    
    lazy var pricelabel: UILabel = {
        
        let label = UILabel()
        label.text = "8900 RUB"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .right
        label.textColor = .black
        return label
    }()
    
    lazy var imageFavourites: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Favourites")
        return imageView
    }()
    
    lazy var sizelabel: UILabel = {
        
        let label = UILabel()
        label.text = "Размеры"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .right
        label.textColor = .black
        return label
    }()
    
    lazy var pickUpSizelabel: UILabel = {
        
        let label = UILabel()
        label.text = "Подобрать размер"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    lazy var imageLine: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Line")
        return imageView
    }()
    
    lazy var imageXS: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "XS")
        return imageView
    }()
    
    lazy var imageS: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "S")
        return imageView
    }()
    
    lazy var imageM: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "M")
        return imageView
    }()
    
    lazy var miniSizelabel: UILabel = {
        
        let label = UILabel()
        label.text = "мало"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()
    
    lazy var subscriptionlabel: UILabel = {
        
        let label = UILabel()
        label.text = "подписка"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()
    
    lazy var colorlabel: UILabel = {
        
        let label = UILabel()
        label.text = "Цвет:белый"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()
    
    lazy var allColorlabel: UILabel = {
        
        let label = UILabel()
        label.text = "Все цвета"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()
    
    lazy var imageLine2: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Line2")
        return imageView
    }()
    
    lazy var whiteColorButton: UIButton = {
        
        let button = UIButton()
        button.setImage(UIImage(named: "WhiteColor"), for: .normal)
        return button
    }()
    
    lazy var blackColorButton: UIButton = {
        
        let button = UIButton()
        button.setImage(UIImage(named: "BlackColor"), for: .normal)
        return button
    }()
    
    lazy var beigeColorButton: UIButton = {
        
        let button = UIButton()
        button.setImage(UIImage(named: "BeigeColor"), for: .normal)
        return button
    }()
    
    lazy var imageLine3: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Line3")
        return imageView
    }()
    
    lazy var availabilityInStoresButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("НАЛИЧИЕ В МАГАЗИНАХ", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 10)
        return button
    }()
    
    lazy var giftButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("ПОДАРИТЬ", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 10)
        return button
    }()
    
    lazy var imageGift: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Gift")
        return imageView
    }()
    
    lazy var similarProductsButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("ПОХОЖИЕ ТОВАРЫ", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()
    
    lazy var leftButton: UIButton = {
        
        let button = UIButton()
        button.setImage(UIImage(named: "Left"), for: .normal)
        return button
    }()
    
    lazy var rightButton: UIButton = {
        
        let button = UIButton()
        button.setImage(UIImage(named: "Right"), for: .normal)
        return button
    }()
    
//    let collectionViewFirst: UICollectionView = {
//        
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//        let collectionViewMiddle = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        return collectionViewMiddle
//    }()
    
//    let collectionViewSecond: UICollectionView = {
//
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//        let collectionViewMiddle = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        return collectionViewMiddle
//    }()
    
    
    private var contentSize: CGSize {
        CGSize(width: self.frame.width, height: self.frame.height + 400)
    }
    
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
//        collectionViewFirst.register(CollectionCellFirst.self, forCellWithReuseIdentifier: "cellFirst")
//        collectionViewSecond.register(CollectionCellSecond.self, forCellWithReuseIdentifier: "cellSecond")
        
        addSybView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

// MARK: - Setup Constrains

extension TrendyView {
    
    func addSybView() {
        
        addSubviews([
            imageViewMain,
            descriptionLabel,
            pricelabel,
            imageFavourites,
            sizelabel,
            pickUpSizelabel,
            imageLine,
            imageXS,
            imageS,
            imageM,
            miniSizelabel,
            subscriptionlabel,
            colorlabel,
            allColorlabel,
            imageLine2,
            whiteColorButton,
            blackColorButton,
            beigeColorButton,
            imageLine3,
            availabilityInStoresButton,
            giftButton,
            imageGift,
            similarProductsButton,
            leftButton,
            rightButton,
//            collectionViewFirst,
//            collectionViewSecond
        ])
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            imageViewMain.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imageViewMain.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            imageViewMain.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            imageViewMain.heightAnchor.constraint(equalToConstant: 1.halfScreen),
            
            descriptionLabel.topAnchor.constraint(equalTo: imageViewMain.bottomAnchor, constant: .descriptionLabelTopAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .leadingTrailingAnchor),
            
            pricelabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: .pricelabelTopAnchor),
            pricelabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .leadingTrailingAnchor),
            
            imageFavourites.topAnchor.constraint(equalTo: imageViewMain.bottomAnchor, constant: .descriptionLabelTopAnchor),
            imageFavourites.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.leadingTrailingAnchor),
            
            sizelabel.topAnchor.constraint(equalTo: pricelabel.bottomAnchor, constant: .sizelabelTopAnchor),
            sizelabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .sizelabelLeadingAnchor),
            
            pickUpSizelabel.topAnchor.constraint(equalTo: pricelabel.bottomAnchor, constant: .sizelabelTopAnchor),
            pickUpSizelabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.leadingTrailingAnchor),
            
            imageLine.topAnchor.constraint(equalTo: pickUpSizelabel.bottomAnchor, constant: .imageLineTopAnchor),
            imageLine.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.imageLineTrailingAnchor),
            
            imageXS.topAnchor.constraint(equalTo: sizelabel.bottomAnchor, constant: .imageXSTopAnchor),
            imageXS.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .imageXSLeadingAnchor),
            imageXS.widthAnchor.constraint(equalToConstant: 73),
            imageXS.heightAnchor.constraint(equalToConstant: 40),
            
            imageS.topAnchor.constraint(equalTo: imageXS.topAnchor),
            imageS.leadingAnchor.constraint(equalTo: imageXS.trailingAnchor, constant: .imageSLeadingAnchor),
            imageS.widthAnchor.constraint(equalToConstant: 73),
            imageS.heightAnchor.constraint(equalToConstant: 40),
            
            imageM.topAnchor.constraint(equalTo: imageS.topAnchor,constant: -.imageMTopAnchor),
            imageM.leadingAnchor.constraint(equalTo: imageS.trailingAnchor, constant: .imageSLeadingAnchor),
            imageM.widthAnchor.constraint(equalToConstant: 73),
            imageM.heightAnchor.constraint(equalToConstant: 42),
            
            miniSizelabel.topAnchor.constraint(equalTo: imageXS.bottomAnchor, constant: .miniSizelabelTopAnchor),
            miniSizelabel.centerXAnchor.constraint(equalTo: imageXS.centerXAnchor),
            
            subscriptionlabel.topAnchor.constraint(equalTo: imageM.bottomAnchor, constant: .miniSizelabelTopAnchor),
            subscriptionlabel.centerXAnchor.constraint(equalTo: imageM.centerXAnchor),
            
            colorlabel.topAnchor.constraint(equalTo: miniSizelabel.bottomAnchor, constant: .colorlabelTopAnchor),
            colorlabel.leadingAnchor.constraint(equalTo: sizelabel.leadingAnchor),
            
            allColorlabel.topAnchor.constraint(equalTo: colorlabel.topAnchor),
            allColorlabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -.leadingTrailingAnchor),
            
            imageLine2.topAnchor.constraint(equalTo: allColorlabel.bottomAnchor, constant: .imageLineTopAnchor),
            imageLine2.centerXAnchor.constraint(equalTo: allColorlabel.centerXAnchor),
            
            whiteColorButton.topAnchor.constraint(equalTo: colorlabel.bottomAnchor, constant: .whiteColorButtonTopAnchor),
            whiteColorButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .imageLineTrailingAnchor),
            whiteColorButton.widthAnchor.constraint(equalToConstant: 28),
            whiteColorButton.heightAnchor.constraint(equalToConstant: 27),
            
            blackColorButton.topAnchor.constraint(equalTo: colorlabel.bottomAnchor, constant: .whiteColorButtonTopAnchor),
            blackColorButton.leadingAnchor.constraint(equalTo: whiteColorButton.trailingAnchor, constant: .blackColorButtonLeadingAnchor),
            blackColorButton.widthAnchor.constraint(equalToConstant: 28),
            blackColorButton.heightAnchor.constraint(equalToConstant: 27),
            
            beigeColorButton.topAnchor.constraint(equalTo: colorlabel.bottomAnchor, constant: .whiteColorButtonTopAnchor),
            beigeColorButton.leadingAnchor.constraint(equalTo: blackColorButton.trailingAnchor, constant: .blackColorButtonLeadingAnchor),
            beigeColorButton.widthAnchor.constraint(equalToConstant: 28),
            beigeColorButton.heightAnchor.constraint(equalToConstant: 27),
            
            imageLine3.topAnchor.constraint(equalTo: whiteColorButton.bottomAnchor, constant: .imageLineTopAnchor),
            imageLine3.centerXAnchor.constraint(equalTo: whiteColorButton.centerXAnchor),
            
            availabilityInStoresButton.topAnchor.constraint(equalTo: blackColorButton.bottomAnchor, constant: .availabilityInStoresButtonTopAnchor),
            availabilityInStoresButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: .availabilityInStoresButtonLeadingAnchor),
            
            giftButton.topAnchor.constraint(equalTo: availabilityInStoresButton.topAnchor),
            giftButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -.giftButtonTrailingAnchor),
            
            imageGift.topAnchor.constraint(equalTo: giftButton.topAnchor),
            imageGift.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -.imageGiftTrailingAnchor),
            imageGift.widthAnchor.constraint(equalToConstant: 20),
            imageGift.heightAnchor.constraint(equalToConstant: 20),
            
            similarProductsButton.topAnchor.constraint(equalTo: availabilityInStoresButton.topAnchor,constant: .similarProductsButtonTopAnchor),
            similarProductsButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: .leadingTrailingAnchor),
            
            leftButton.topAnchor.constraint(equalTo: similarProductsButton.topAnchor),
            leftButton.trailingAnchor.constraint(equalTo: rightButton.leadingAnchor,constant: .leftButtonButtonTrailingAnchor),
            
            rightButton.topAnchor.constraint(equalTo: similarProductsButton.topAnchor),
            rightButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -.rightButtonTrailingAnchor),
            
//            collectionViewFirst.topAnchor.constraint(equalTo: similarProductsButton.bottomAnchor, constant: 27),
//            collectionViewFirst.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
//            collectionViewFirst.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
//            collectionViewFirst.heightAnchor.constraint(equalToConstant: 200),
            
//            collectionViewSecond.topAnchor.constraint(equalTo: similarProductsButton.bottomAnchor, constant: 50),
//            collectionViewSecond.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
//            collectionViewSecond.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
//            collectionViewSecond.heightAnchor.constraint(equalToConstant: 200),
            
        ])
    }
}

// MARK: - Constant Constraints

private extension CGFloat {
    
    static let leadingTrailingAnchor: CGFloat = 17
    static let descriptionLabelTopAnchor: CGFloat = 30
    static let pricelabelTopAnchor: CGFloat = 8
    static let sizelabelTopAnchor: CGFloat = 31
    static let sizelabelLeadingAnchor: CGFloat = 16
    static let imageLineTopAnchor: CGFloat = 3
    static let imageLineTrailingAnchor: CGFloat = 20
    static let imageXSTopAnchor: CGFloat = 10
    static let imageXSLeadingAnchor: CGFloat = 13
    static let imageSLeadingAnchor: CGFloat = 10
    static let imageMTopAnchor: CGFloat = 2
    static let miniSizelabelTopAnchor: CGFloat = 3
    static let colorlabelTopAnchor: CGFloat = 40
    static let whiteColorButtonTopAnchor: CGFloat = 6
    static let blackColorButtonLeadingAnchor: CGFloat = 16
    static let availabilityInStoresButtonLeadingAnchor: CGFloat = 20
    static let availabilityInStoresButtonTopAnchor: CGFloat = 31
    static let giftButtonTrailingAnchor: CGFloat = 41
    static let imageGiftTrailingAnchor: CGFloat = 10.81
    static let similarProductsButtonTopAnchor: CGFloat = 55
    static let leftButtonButtonTrailingAnchor: CGFloat = -30
    static let rightButtonTrailingAnchor: CGFloat = 21
    
}
