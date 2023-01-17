//
//  ColletionCellSecond.swift
//  TrendyShop
//
//  Created by Александр Косяков on 17.01.2023.
//

import UIKit

final class CollectionCellSecond: UICollectionViewCell {

    var data: CustomDataSecond? {
        didSet {
            guard let data = data else { return }
            imageView.image = data.image
        }
    }

    // MARK: - UI Elements

    private let imageView: UIImageView = {

        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: .zero)

        addSubView()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup Constrains

private extension CollectionCellSecond {

    private func addSubView() {

        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([

            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -30),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)

        ])
    }
}
