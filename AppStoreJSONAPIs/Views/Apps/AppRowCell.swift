//
//  AppRowCell.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 15/02/2022.
//

import UIKit



class AppRowCell: UICollectionViewCell {
    
    let imageView = UIImageView(cornerRadius: 8)
    
    let nameLabel = UILabel(text: "APP NAME", font: .systemFont(ofSize: 16))
    let companyLabel = UILabel(text: "Company Name", font: .systemFont(ofSize: 13))
    
    let getButton = UIButton(title: "GET", cornerRadius: 16)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.backgroundColor = .purple
        imageView.widthAnchor.constraint(equalToConstant: 65).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        getButton.backgroundColor = UIColor(white: 0.95, alpha: 1)
        getButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        getButton.heightAnchor.constraint(equalToConstant: 32).isActive = true

        
        let verticalStackView = UIStackView(arrangedSubviews: [nameLabel, companyLabel])
        verticalStackView.spacing = 4
        verticalStackView.axis = .vertical
        let stackView = UIStackView(arrangedSubviews: [imageView, verticalStackView, getButton])
        stackView.spacing = 12
        stackView.alignment = .center
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 3, paddingLeft: 3, paddingBottom: 3, paddingRight: 3)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
