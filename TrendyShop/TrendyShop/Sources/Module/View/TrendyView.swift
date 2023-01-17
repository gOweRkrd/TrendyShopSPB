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
    
     lazy var scrollView: UIScrollView = {
       let sv = UIScrollView()
       return sv
     }()
    
    
     lazy var contentView: UIView = {
      let view = UIView()
      return view
    }()
    
    lazy var colorlabel: UILabel = {
        
        let label = UILabel()
        label.text = "Цвет:белый"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .black
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        self.addSubview(scrollView)
//        scrollView.addSubview(imageViewMain)
        backgroundColor = .white
        
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
        ])
    }
    
    //    func configureUI() {
    //        self.addSubview(scrollView)
    //        NSLayoutConstraint.activate([
    //            scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
    //            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
    //            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
    //            scrollView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
    //        ])
    //
    //        scrollView.addSubview(contentView)
    //        NSLayoutConstraint.activate([
    //            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
    //            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
    //            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
    //            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
    //            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
    //        ])
    //
    //    }
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
            
//            scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
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
    
}
