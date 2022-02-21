//
//  SearchResultCell.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 12/02/2022.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    var appResult: Result! {
        didSet {
            nameLabel.text = appResult.trackName
            categoryLabel.text = appResult.primaryGenreName
            let rate = String(format: "%.1f", appResult.averageUserRating ?? 0)
            ratingLabel.text = "Rating: \(rate)"
            
            let url = URL(string: appResult.artworkUrl100)
            appIconImageView.sd_setImage(with: url)
            
            screenshot1ImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[0]))
            
            if appResult.screenshotUrls.count > 1 {
                screenshot2ImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[1]))
            }
           
            if appResult.screenshotUrls.count > 2 {
                screenshot3ImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[2]))
            }
        }
    }
    
    let appIconImageView = UIImageView(cornerRadius: 12)
    let nameLabel = UILabel( font: .systemFont(ofSize: 16))
    let categoryLabel = UILabel( font: .systemFont(ofSize: 16))
    let ratingLabel = UILabel(font: .systemFont(ofSize: 16))
    let getButton = UIButton(title: "GET", cornerRadius: 16)
    
//    let appIconImageView: UIImageView = {
//       let imageView = UIImageView()
//        imageView.widthAnchor.constraint(equalToConstant: 65).isActive = true
//        imageView.heightAnchor.constraint(equalToConstant: 65).isActive = true
//        imageView.layer.cornerRadius = 12
//        imageView.clipsToBounds = true
//        return imageView
//    }()
    
//    let nameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "APP NAME"
//        return label
//    }()
//
//    let categoryLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Photos & Videos"
//        return label
//    }()
//
//    let ratingLabel: UILabel = {
//        let label = UILabel()
//        label.text = "9.20M"
//        return label
//    }()
//
//    let getButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("GET", for: .normal)
//        button.setTitleColor(.blue, for: .normal)
//        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
//        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
//        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
//        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
//        button.layer.cornerRadius = 16
//        return button
//    }()
    
    lazy var screenshot1ImageView = self.createScreenshotImageView()
    lazy var screenshot2ImageView = self.createScreenshotImageView()
    lazy var screenshot3ImageView = self.createScreenshotImageView()
    
    func createScreenshotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        imageView.contentMode = .scaleAspectFill
        return imageView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        appIconImageView.backgroundColor = .purple
        appIconImageView.widthAnchor.constraint(equalToConstant: 65).isActive = true
        appIconImageView.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        getButton.backgroundColor = UIColor(white: 0.95, alpha: 1)
        getButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        getButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        let labelStackView = UIStackView(arrangedSubviews: [nameLabel, categoryLabel, ratingLabel])
        labelStackView.axis = .vertical
        
        let infoTopStackView = UIStackView(arrangedSubviews: [appIconImageView, labelStackView, getButton])
        
        infoTopStackView.spacing = 12
        infoTopStackView.alignment = .center
        
        let screenshotsStackView = UIStackView(arrangedSubviews: [screenshot1ImageView, screenshot2ImageView, screenshot3ImageView])
        screenshotsStackView.spacing = 12
        screenshotsStackView.distribution = .fillEqually
        
        let overallStackView = UIStackView(arrangedSubviews: [infoTopStackView, screenshotsStackView])
        overallStackView.axis = .vertical
        overallStackView.spacing = 16
        
        addSubview(overallStackView)
        overallStackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 16, paddingLeft: 16, paddingBottom: 16, paddingRight: 16)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
