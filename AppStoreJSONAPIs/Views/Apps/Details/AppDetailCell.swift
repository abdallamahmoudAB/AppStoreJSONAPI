//
//  AppDetailCell.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 19/02/2022.
//

import UIKit

class AppDetailCell: UICollectionViewCell {
    
    var app: Result! {
        didSet {
            nameLabel.text = app?.trackName
            releaseNotesLabel.text = app?.releaseNotes
            appIconImageView.sd_setImage(with: URL(string: app?.artworkUrl100 ?? ""))
            priceButton.setTitle(app?.formattedPrice, for: .normal)
        }
    }
    
    let appIconImageView = UIImageView(cornerRadius: 16)
    let nameLabel = UILabel(text: "APP NAME", font: .boldSystemFont(ofSize: 24), numberOfLines: 2)
    let priceButton = UIButton(title: "$4.99", cornerRadius: 16)
    let whatsNewLabel = UILabel(text: "What's New", font: .boldSystemFont(ofSize: 20))
    let releaseNotesLabel = UILabel(text: "Release Notes", font: .systemFont(ofSize: 16), numberOfLines: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        appIconImageView.constrainWidth(constant: 140)
        appIconImageView.constrainHeight(constant: 140)
        
        priceButton.backgroundColor = .blue
        priceButton.constrainHeight(constant: 32)
        priceButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        priceButton.setTitleColor(.white, for: .normal)
        priceButton.constrainWidth(constant: 80)
        
        
        
        
        let verticalStackView1 = VerticalStackView(arrangedSubviews: [
            nameLabel,
            UIStackView(arrangedSubviews: [priceButton, UIView()]),
            UIView()
        ], spacing: 12)
        
        let VerticalStackView2 = VerticalStackView(arrangedSubviews: [
            whatsNewLabel,
            releaseNotesLabel
            ], spacing: 16)
        
        let horizontalStackView = UIStackView(arrangedSubviews: [
            appIconImageView,
            verticalStackView1
            ])
        
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 20
        
        let stackView = UIStackView(arrangedSubviews: [
            horizontalStackView,
            VerticalStackView2
        ])
        
        stackView.spacing = 12
        stackView.axis = .vertical
        
        
        
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

//extension UIStackView {
//    convenience init(arrangedSubViews: [UIView], customSpacing: CGFloat = 0) {
//        self.init(arrangedSubViews: arrangedSubViews)
//        self.spacing = customSpacing
//    }
//}
