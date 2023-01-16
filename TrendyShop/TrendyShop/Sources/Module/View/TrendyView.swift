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
    
    
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
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
            imageFavourites
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
        ])
    }
}

// MARK: - Constant Constraints

private extension CGFloat {
  
    static let topAnchor: CGFloat = 10
    static let leadingTrailingAnchor: CGFloat = 15
    static let descriptionLabelTopAnchor: CGFloat = 30
    static let pricelabelTopAnchor: CGFloat = 8
}
