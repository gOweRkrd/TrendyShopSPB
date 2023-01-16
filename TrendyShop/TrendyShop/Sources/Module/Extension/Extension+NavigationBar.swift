//
//  Extension+NavigationBar.swift
//  TrendyShop
//
//  Created by Александр Косяков on 16.01.2023.
//

import UIKit

extension UIViewController {
    
    func createCustomNavigationBar() {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func createCustomTitleView(personButton: String, searchButton: String, tittleImage: String, shopButton: String, menuButton: String) -> UIView {
        
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 280, height: 41)
        
        let imageTittle = UIImageView()
        imageTittle.image = UIImage(named: "Tittle")
        imageTittle.layer.cornerRadius = imageTittle.frame.height / 2
        imageTittle.frame = CGRect(x: 120, y: 10, width: 38, height: 17)
        view.addSubview(imageTittle)
        
        let personButton = UIButton()
        personButton.frame = CGRect(x: -35, y: 10, width: 13, height: 15)
        personButton.setImage(UIImage(named: "Person"), for: .normal)
        view.addSubview(personButton)
        
        let searchButton = UIButton()
        searchButton.frame = CGRect(x: -5, y: 10, width: 13, height: 15)
        searchButton.setImage(UIImage(named: "Search"), for: .normal)
        view.addSubview(searchButton)
        
        let shopButton = UIButton()
        shopButton.frame = CGRect(x: 260, y: 10, width: 13, height: 15)
        shopButton.setImage(UIImage(named: "Shop"), for: .normal)
        view.addSubview(shopButton)
        
        let menuButton = UIButton()
        menuButton.frame = CGRect(x: 300, y: 10, width: 13, height: 15)
        menuButton.setImage(UIImage(named: "Menu"), for: .normal)
        view.addSubview(menuButton)
        
        return view
    }
}

