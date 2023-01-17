//
//  TrendyView.swift
//  TrendyShop
//
//  Created by Александр Косяков on 16.01.2023.
//

import UIKit

final class TrendyView: UIView {

    // MARK: - UI Elements

    let collectionViewFirst: UICollectionView = {

       let layout = UICollectionViewFlowLayout()
       layout.scrollDirection = .horizontal
       let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
       return collectionView
   }()

    let collectionViewSecond: UICollectionView = {

       let layout = UICollectionViewFlowLayout()
       layout.scrollDirection = .horizontal
       let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
       return collectionView
   }()

    private lazy var imageViewMain: UIImageView = {

        let imageView = UIImageView()
        imageView.image = UIImage(named: "imageTittle")
        return imageView
    }()

    private lazy var descriptionLabel: UILabel = {

        let label = UILabel()
        label.text = "ЖАКЕТ УДЛИНЕННЫЙ,БЕЛЫЙ"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .right
        label.textColor = .black
        return label
    }()

    private lazy var pricelabel: UILabel = {

        let label = UILabel()
        label.text = "8900 RUB"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .right
        label.textColor = .black
        return label
    }()

    private lazy var imageFavourites: UIImageView = {

        let imageView = UIImageView()
        imageView.image = UIImage(named: "Favourites")
        return imageView
    }()

    private lazy var sizelabel: UILabel = {

        let label = UILabel()
        label.text = "Размеры"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .right
        label.textColor = .black
        return label
    }()

    private lazy var pickUpSizelabel: UILabel = {

        let label = UILabel()
        label.text = "Подобрать размер"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()

    private lazy var imageLine: UIImageView = {

        let imageView = UIImageView()
        imageView.image = UIImage(named: "Line")
        return imageView
    }()

    private lazy var imageXS: UIImageView = {

        let imageView = UIImageView()
        imageView.image = UIImage(named: "XS")
        return imageView
    }()

    private lazy var imageS: UIImageView = {

        let imageView = UIImageView()
        imageView.image = UIImage(named: "S")
        return imageView
    }()

    private lazy var imageM: UIImageView = {

        let imageView = UIImageView()
        imageView.image = UIImage(named: "M")
        return imageView
    }()

    private lazy var miniSizelabel: UILabel = {

        let label = UILabel()
        label.text = "мало"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()

    private lazy var subscriptionlabel: UILabel = {

        let label = UILabel()
        label.text = "подписка"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()

    private lazy var colorlabel: UILabel = {

        let label = UILabel()
        label.text = "Цвет:белый"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()

    private lazy var allColorlabel: UILabel = {

        let label = UILabel()
        label.text = "Все цвета"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()

    private lazy var imageLine2: UIImageView = {

        let imageView = UIImageView()
        imageView.image = UIImage(named: "Line2")
        return imageView
    }()

    private lazy var whiteColorButton: UIButton = {

        let button = UIButton()
        button.setImage(UIImage(named: "WhiteColor"), for: .normal)
        return button
    }()

    private lazy var blackColorButton: UIButton = {

        let button = UIButton()
        button.setImage(UIImage(named: "BlackColor"), for: .normal)
        return button
    }()

    private lazy var beigeColorButton: UIButton = {

        let button = UIButton()
        button.setImage(UIImage(named: "BeigeColor"), for: .normal)
        return button
    }()

    private lazy var imageLine3: UIImageView = {

        let imageView = UIImageView()
        imageView.image = UIImage(named: "Line3")
        return imageView
    }()

    private lazy var availabilityInStoresButton: UIButton = {

        let button = UIButton()
        button.setTitle("НАЛИЧИЕ В МАГАЗИНАХ", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 10)
        return button
    }()

    private lazy var giftButton: UIButton = {

        let button = UIButton()
        button.setTitle("ПОДАРИТЬ", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 10)
        return button
    }()

    private lazy var imageGift: UIImageView = {

        let imageView = UIImageView()
        imageView.image = UIImage(named: "Gift")
        return imageView
    }()

    private lazy var similarProductsButton: UIButton = {

        let button = UIButton()
        button.setTitle("ПОХОЖИЕ ТОВАРЫ", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()

    private lazy var leftButton: UIButton = {

        let button = UIButton()
        button.setImage(UIImage(named: "Left"), for: .normal)
        return button
    }()

    private lazy var rightButton: UIButton = {

        let button = UIButton()
        button.setImage(UIImage(named: "Right"), for: .normal)
        return button
    }()

    private lazy var nameClotheslabel: UILabel = {

        let label = UILabel()
        label.text = "ПЛАТЬЯ C V-ОБРАЗНЫМ \n ВЫРЕЗОМ,БЕЛЫЙ"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        label.numberOfLines = 2
        label.textAlignment = .left
        return label
    }()

    private lazy var firstPricelabel: UILabel = {

        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "14 900 RUB")
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))

        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        label.attributedText = attributeString
        return label
    }()

    private lazy var realPricelabel: UILabel = {

        let label = UILabel()
        label.text = "8 000 RUB"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()

    private lazy var nameClotheslabel2: UILabel = {

        let label = UILabel()
        label.text = "ЖАКЕТ ДВУБОРТНЫЙ \n СЕРО-ГОЛУБОЙ"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        label.numberOfLines = 2
        label.textAlignment = .left
        return label
    }()

    private lazy var realPricelabel2: UILabel = {

        let label = UILabel()
        label.text = "8900 RUB"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()

    private lazy var viewedProductsButton: UIButton = {

        let button = UIButton()
        button.setTitle("ПРОСМОТРЕННЫЕ ТОВАРЫ", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()

    private  lazy var leftButton2: UIButton = {

        let button = UIButton()
        button.setImage(UIImage(named: "Left"), for: .normal)
        return button
    }()

    private lazy var rightButton2: UIButton = {

        let button = UIButton()
        button.setImage(UIImage(named: "Right"), for: .normal)
        return button
    }()

    private lazy var nameClotheslabelSecond: UILabel = {

        let label = UILabel()
        label.text = "КОМБИНЕЗОН \n СО СТОЙКОЙ,ЧЕРНЫЙ"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        label.numberOfLines = 2
        label.textAlignment = .left
        return label
    }()

    private lazy var realPricelabelSecond: UILabel = {

        let label = UILabel()
        label.text = "9 500 RUB"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()

    private lazy var nameClothesSecond: UILabel = {

        let label = UILabel()
        label.text = "ПЛАТЬЕ МАКСИ \n С ЯРУСАМИ БЕЛЫЙ"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        label.numberOfLines = 2
        label.textAlignment = .left
        return label
    }()

    private lazy var realPriceSecond: UILabel = {

        let label = UILabel()
        label.text = "10 500 RUB"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .white
        collectionViewFirst.register(CollectionCellFirst.self, forCellWithReuseIdentifier: "cellFirst")
        collectionViewSecond.register(CollectionCellSecond.self, forCellWithReuseIdentifier: "cellSecond")

        addSybView()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

// MARK: - Setup Constrains

extension TrendyView {

    private func addSybView() {

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
            collectionViewFirst,
            collectionViewSecond,
            nameClotheslabel,
            firstPricelabel,
            realPricelabel,
            nameClotheslabel2,
            realPricelabel2,
            viewedProductsButton,
            leftButton2,
            rightButton2,
            nameClotheslabelSecond,
            realPricelabelSecond,
            nameClothesSecond,
            realPriceSecond
        ])
    }

    private func setupConstraints() {

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
            imageXS.widthAnchor.constraint(equalToConstant: .imageWidthAnchor),
            imageXS.heightAnchor.constraint(equalToConstant: .imageHightAnchor),

            imageS.topAnchor.constraint(equalTo: imageXS.topAnchor),
            imageS.leadingAnchor.constraint(equalTo: imageXS.trailingAnchor, constant: .imageSLeadingAnchor),
            imageS.widthAnchor.constraint(equalToConstant: .imageWidthAnchor),
            imageS.heightAnchor.constraint(equalToConstant: .imageHightAnchor),

            imageM.topAnchor.constraint(equalTo: imageS.topAnchor, constant: -.imageMTopAnchor),
            imageM.leadingAnchor.constraint(equalTo: imageS.trailingAnchor, constant: .imageSLeadingAnchor),
            imageM.widthAnchor.constraint(equalToConstant: .imageWidthAnchor),
            imageM.heightAnchor.constraint(equalToConstant: .imageMhightAnchor),

            miniSizelabel.topAnchor.constraint(equalTo: imageXS.bottomAnchor, constant: .miniSizelabelTopAnchor),
            miniSizelabel.centerXAnchor.constraint(equalTo: imageXS.centerXAnchor),

            subscriptionlabel.topAnchor.constraint(equalTo: imageM.bottomAnchor, constant: .miniSizelabelTopAnchor),
            subscriptionlabel.centerXAnchor.constraint(equalTo: imageM.centerXAnchor),

            colorlabel.topAnchor.constraint(equalTo: miniSizelabel.bottomAnchor, constant: .colorlabelTopAnchor),
            colorlabel.leadingAnchor.constraint(equalTo: sizelabel.leadingAnchor),

            allColorlabel.topAnchor.constraint(equalTo: colorlabel.topAnchor),
            allColorlabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.leadingTrailingAnchor),

            imageLine2.topAnchor.constraint(equalTo: allColorlabel.bottomAnchor, constant: .imageLineTopAnchor),
            imageLine2.centerXAnchor.constraint(equalTo: allColorlabel.centerXAnchor),

            whiteColorButton.topAnchor.constraint(equalTo: colorlabel.bottomAnchor, constant: .whiteColorButtonTopAnchor),
            whiteColorButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .imageLineTrailingAnchor),
            whiteColorButton.widthAnchor.constraint(equalToConstant: .widthAnchor),
            whiteColorButton.heightAnchor.constraint(equalToConstant: .hightAnchor),

            blackColorButton.topAnchor.constraint(equalTo: colorlabel.bottomAnchor, constant: .whiteColorButtonTopAnchor),
            blackColorButton.leadingAnchor.constraint(equalTo: whiteColorButton.trailingAnchor, constant: .blackColorButtonLeadingAnchor),
            blackColorButton.widthAnchor.constraint(equalToConstant: .widthAnchor),
            blackColorButton.heightAnchor.constraint(equalToConstant: .hightAnchor),

            beigeColorButton.topAnchor.constraint(equalTo: colorlabel.bottomAnchor, constant: .whiteColorButtonTopAnchor),
            beigeColorButton.leadingAnchor.constraint(equalTo: blackColorButton.trailingAnchor, constant: .blackColorButtonLeadingAnchor),
            beigeColorButton.widthAnchor.constraint(equalToConstant: .widthAnchor),
            beigeColorButton.heightAnchor.constraint(equalToConstant: .hightAnchor),

            imageLine3.topAnchor.constraint(equalTo: whiteColorButton.bottomAnchor, constant: .imageLineTopAnchor),
            imageLine3.centerXAnchor.constraint(equalTo: whiteColorButton.centerXAnchor),

            availabilityInStoresButton.topAnchor.constraint(equalTo: blackColorButton.bottomAnchor, constant: .availabilityInStoresButtonTopAnchor),
            availabilityInStoresButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: .availabilityInStoresButtonLeadingAnchor),

            giftButton.topAnchor.constraint(equalTo: availabilityInStoresButton.topAnchor),
            giftButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -.giftButtonTrailingAnchor),

            imageGift.topAnchor.constraint(equalTo: giftButton.topAnchor),
            imageGift.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -.imageGiftTrailingAnchor),
            imageGift.widthAnchor.constraint(equalToConstant: .imageSizeAnchor),
            imageGift.heightAnchor.constraint(equalToConstant: .imageSizeAnchor),

            similarProductsButton.topAnchor.constraint(equalTo: availabilityInStoresButton.topAnchor, constant: .similarProductsButtonTopAnchor),
            similarProductsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: .leadingTrailingAnchor),

            leftButton.topAnchor.constraint(equalTo: similarProductsButton.topAnchor),
            leftButton.trailingAnchor.constraint(equalTo: rightButton.leadingAnchor, constant: .leftButtonButtonTrailingAnchor),

            rightButton.topAnchor.constraint(equalTo: similarProductsButton.topAnchor),
            rightButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.rightButtonTrailingAnchor),

            collectionViewFirst.topAnchor.constraint(equalTo: similarProductsButton.bottomAnchor, constant: .hightAnchor),
            collectionViewFirst.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .firstPricelabelTopAnchor),
            collectionViewFirst.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.firstPricelabelTopAnchor),
            collectionViewFirst.heightAnchor.constraint(equalToConstant: .CollectionViewHeightAnchor),

            collectionViewSecond.topAnchor.constraint(equalTo: viewedProductsButton.bottomAnchor, constant: .hightAnchor),
            collectionViewSecond.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .firstPricelabelTopAnchor),
            collectionViewSecond.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.firstPricelabelTopAnchor),
            collectionViewSecond.heightAnchor.constraint(equalToConstant: .CollectionViewHeightAnchor),

            nameClotheslabel.topAnchor.constraint(equalTo: collectionViewFirst.bottomAnchor, constant: .imageXSTopAnchor),
            nameClotheslabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: .nameClotheslabelLeadingAnchor),

            firstPricelabel.topAnchor.constraint(equalTo: nameClotheslabel.bottomAnchor, constant: .firstPricelabelTopAnchor),
            firstPricelabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: .nameClotheslabelLeadingAnchor),

            realPricelabel.topAnchor.constraint(equalTo: nameClotheslabel.bottomAnchor, constant: .firstPricelabelTopAnchor),
            realPricelabel.leadingAnchor.constraint(equalTo: firstPricelabel.trailingAnchor, constant: .imageSLeadingAnchor),

            nameClotheslabel2.topAnchor.constraint(equalTo: nameClotheslabel.topAnchor),
            nameClotheslabel2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.nameClotheslabel2TrailingAnchor),

            realPricelabel2.topAnchor.constraint(equalTo: firstPricelabel.topAnchor),
            realPricelabel2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.realPriceSecondTrailingAnchor),

            viewedProductsButton.topAnchor.constraint(equalTo: firstPricelabel.bottomAnchor, constant: .viewedProductsButtonTopAnchor),
            viewedProductsButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .leadingTrailingAnchor),

            leftButton2.topAnchor.constraint(equalTo: viewedProductsButton.topAnchor),
            leftButton2.trailingAnchor.constraint(equalTo: rightButton.leadingAnchor, constant: .leftButtonButtonTrailingAnchor),

            rightButton2.topAnchor.constraint(equalTo: viewedProductsButton.topAnchor),
            rightButton2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.rightButtonTrailingAnchor),

            nameClotheslabelSecond.topAnchor.constraint(equalTo: collectionViewSecond.bottomAnchor, constant: .imageXSTopAnchor),
            nameClotheslabelSecond.leadingAnchor.constraint(equalTo: leadingAnchor, constant: .nameClotheslabelLeadingAnchor),

            realPricelabelSecond.topAnchor.constraint(equalTo: nameClotheslabelSecond.bottomAnchor, constant: .firstPricelabelTopAnchor),
            realPricelabelSecond.leadingAnchor.constraint(equalTo: leadingAnchor, constant: .nameClotheslabelLeadingAnchor),

            nameClothesSecond.topAnchor.constraint(equalTo: nameClotheslabelSecond.topAnchor),
            nameClothesSecond.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.nameClothesSecondTrailingAnchor),

            realPriceSecond.topAnchor.constraint(equalTo: realPricelabelSecond.topAnchor),
            realPriceSecond.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -.realPriceSecondTrailingAnchor)

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
    static let nameClotheslabelLeadingAnchor: CGFloat = 12
    static let nameClotheslabelTopAnchor: CGFloat = 200
    static let firstPricelabelTopAnchor: CGFloat = 5
    static let CollectionViewHeightAnchor: CGFloat = 250
    static let imageWidthAnchor: CGFloat = 73
    static let imageHightAnchor: CGFloat = 40
    static let hightAnchor: CGFloat = 27
    static let widthAnchor: CGFloat = 28
    static let imageSizeAnchor: CGFloat = 20
    static let imageMhightAnchor: CGFloat = 42
    static let nameClotheslabel2TrailingAnchor: CGFloat = 70
    static let realPriceSecondTrailingAnchor: CGFloat = 135
    static let viewedProductsButtonTopAnchor: CGFloat = 53
    static let nameClothesSecondTrailingAnchor: CGFloat = 90
    
}
