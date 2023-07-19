//
//  MainViewController.swift
//  projectOnlineShop
//
//  Created by Ilya Pogozhev on 18.07.2023.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let cellId = "CellID"
    
    let mainCollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = {
            let screenWidth = UIScreen.main.bounds.width
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: screenWidth - 50, height: 150)
            layout.scrollDirection = .horizontal
            layout.minimumLineSpacing = 0
            layout.minimumInteritemSpacing = 0
        
            return layout
        }()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isPagingEnabled = true
        collectionView.horizontalScrollIndicatorInsets = UIEdgeInsets.init(top: 0, left: 100, bottom: 0, right: 100)
        return collectionView
    }()
    
    let mainTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupScene()
        makeConstraints()
    }
}

private extension MainViewController {
    func setupScene() {
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        view.addSubview(mainTableView)
        mainTableView.backgroundColor = .darkGray
        view.addSubview(mainCollectionView)
    }
    func makeConstraints() {
        mainCollectionView.snp.makeConstraints {
//            $0.left.right.equalToSuperview().inset(25)
//            $0.height.equalTo(300)
//            $0.centerX.equalToSuperview()
//            $0.centerY.equalToSuperview().offset(-300)
            
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.left.right.equalToSuperview().inset(25)
            $0.height.equalTo(150)
            
        }
        mainTableView.snp.makeConstraints {
            $0.top.equalTo(mainCollectionView.snp.bottom).offset(75)
            $0.left.right.equalToSuperview().inset(25)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(15)
        }
        
    }
}
extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MainCollectionViewCell
        cell.configure(data: data[indexPath.row] )
        return cell
    }
    
    
}
