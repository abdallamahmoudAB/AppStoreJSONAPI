//
//  PreviewCell.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 19/02/2022.
//

import UIKit

class PreviewCell: UICollectionViewCell {
    
    let horizontalController = PreviewScreenShotsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        addSubview(horizontalController.view)
        horizontalController.view.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
