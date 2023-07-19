//
//  MainCollectionViewCell.swift
//  projectOnlineShop
//
//  Created by Ilya Pogozhev on 19.07.2023.
//

import UIKit
import SnapKit

class MainCollectionViewCell: UICollectionViewCell {
    
    let textLabel: UILabel = {
            let label = UILabel()
            label.textAlignment = .center
            label.font = UIFont.preferredFont(forTextStyle: .footnote)
            label.numberOfLines = 0
            label.textColor = .white
            label.font = UIFont.boldSystemFont(ofSize: 20)
            return label
        }()
    let iconMainCell: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.tintColor = .white
        return image
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(data: MainCells) {
        textLabel.text = data.infoCell
        iconMainCell.image = data.imageCell
        contentView.backgroundColor = data.backgroundCell
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        textLabel.text = nil
    }
}
private extension MainCollectionViewCell {
    func setupCell() {
        contentView.layer.cornerRadius = 25
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.black.cgColor

        
        contentView.addSubview(textLabel)
        contentView.addSubview(iconMainCell)
        
        
    }
    
    func makeConstraints() {
        textLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        iconMainCell.snp.makeConstraints {
            $0.size.equalTo(25)
            $0.top.equalToSuperview().inset(25)
            $0.left.equalToSuperview().inset(25)
        }
    }
}
