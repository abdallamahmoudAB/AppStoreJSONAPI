//
//  ReviewCell.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 19/02/2022.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    
    let titleLabel = UILabel(text: "Review Title", font: .boldSystemFont(ofSize: 18))
    let authorLabel = UILabel(text: "Author", font: .systemFont(ofSize: 16))
    let starsLabel = UILabel(text: "Stars", font: .systemFont(ofSize: 14))
    
    let starsStackView: UIStackView = {
        var arranedSubViews = [UIView]()
        (0..<5).forEach { _ in
            let imageView = UIImageView(image: UIImage(named: "star"))
            imageView.constrainWidth(constant: 24)
            imageView.constrainHeight(constant: 24)
            arranedSubViews.append(imageView)
        }
        arranedSubViews.append(UIView())
        
        let stackView = UIStackView(arrangedSubviews: arranedSubViews)
        return stackView
    }()
    
    let bodyLabel = UILabel(text: "Review Body\nReview Body\nReview Body\n", font: .systemFont(ofSize: 14), numberOfLines: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(white: 0.90, alpha: 1)
        layer.cornerRadius = 16
        clipsToBounds = true
        
        let stackView1 = UIStackView(arrangedSubviews: [titleLabel, UIView(), authorLabel])
        stackView1.axis = .horizontal
        stackView1.spacing = 8
        
        let stackView = VerticalStackView(arrangedSubviews: [
            stackView1,
            starsStackView,
            UIView(),
            bodyLabel,
            UIView()
        ])
        
        stackView.spacing = 6
        
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
