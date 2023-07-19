//
//  CategoriesCollectionViewCell.swift
//  projectOnlineShop
//
//  Created by Ilya Pogozhev on 20.07.2023.
//

import UIKit
import SnapKit

class CategoriesCollectionViewCell: UICollectionViewCell {
     
    let labelCategories: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCategories(categories: Categories) {
        labelCategories.text = categories.name
    }
    override func prepareForReuse() {
        labelCategories.text = nil
    }
}
private extension CategoriesCollectionViewCell {
    func makeCell() {
        contentView.addSubview(labelCategories)
        
        contentView.layer.cornerRadius = 20
    }
    func makeConstraints() {
        labelCategories.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
