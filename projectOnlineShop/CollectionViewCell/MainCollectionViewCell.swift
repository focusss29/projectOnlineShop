//
//  MainCollectionViewCell.swift
//  projectOnlineShop
//
//  Created by Ilya Pogozhev on 19.07.2023.
//

import UIKit
import SnapKit

class MainCollectionViewCell: UICollectionViewCell {
    var nameSystemImageCell = ["percent", "flame", "tengesign.circle"]
    var systemImageMainCell: [UIImage] = []
    
    let textLabel: UILabel = {
            let label = UILabel()
            label.textAlignment = .center
            label.font = UIFont.preferredFont(forTextStyle: .footnote)
            label.numberOfLines = 0
            return label
        }()
    let iconMainCell: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
        makeConstraints()
        setSystemImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(_ text: String, iconCellIndex: Int) {
        textLabel.text = text
        iconMainCell.image = systemImageMainCell[iconCellIndex]
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
        contentView.backgroundColor = .systemBackground
        
        contentView.addSubview(textLabel)
        contentView.addSubview(iconMainCell)
        
        
    }
    
    func makeConstraints() {
        textLabel.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        iconMainCell.snp.makeConstraints {
            $0.top.equalToSuperview().inset(25)
            $0.left.equalToSuperview().inset(25)
        }
    }
    func setSystemImage() {
        for name in nameSystemImageCell {
            if let image = UIImage(systemName: name) {
                systemImageMainCell.append(image)
            }
        }
    }
}
