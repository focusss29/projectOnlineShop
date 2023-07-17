//
//  MainViewController.swift
//  projectOnlineShop
//
//  Created by Ilya Pogozhev on 18.07.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.isLayoutMarginsRelativeArrangement = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
}

