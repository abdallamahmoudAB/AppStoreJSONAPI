//
//  ScreenShotCell.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 19/02/2022.
//

import UIKit

class ScreenShotCell: UICollectionViewCell {
    
    let imageView = UIImageView(cornerRadius: 12)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.backgroundColor = .purple
        addSubview(imageView)
        imageView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
