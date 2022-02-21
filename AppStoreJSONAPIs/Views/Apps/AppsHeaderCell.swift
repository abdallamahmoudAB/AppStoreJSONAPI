//
//  AppsHeaderCell.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 16/02/2022.
//

import UIKit

class AppsHeaderCell: UICollectionViewCell {
    
    let companyLabel = UILabel(text: "Facebook", font: .boldSystemFont(ofSize: 12))
    let titleLabel = UILabel(text: "Keeping up with friends is faster than ever", font: .systemFont(ofSize: 25))
    
    let imageView = UIImageView(cornerRadius: 8)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        companyLabel.textColor = .blue
        titleLabel.numberOfLines = 2
        
        let verticalStackView = UIStackView(arrangedSubviews: [companyLabel, titleLabel, imageView])
        verticalStackView.spacing = 10
        verticalStackView.axis = .vertical
        addSubview(verticalStackView)
        verticalStackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 16, paddingLeft: 16, paddingBottom: 0, paddingRight: 16)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
