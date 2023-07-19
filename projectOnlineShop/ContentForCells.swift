//
//  CustomBackgrounds.swift
//  projectOnlineShop
//
//  Created by Ilya Pogozhev on 19.07.2023.
//

import UIKit

struct MainCells {
    let infoCell: String
    let backgroundCell: UIColor
    let imageCell: UIImage
}
var data: [MainCells] = [MainCells(infoCell: "Скидка на технику Apple", backgroundCell: UIColor(patternImage: UIImage(named: "backgroundImageCell1")!), imageCell: UIImage(systemName: "percent")!),
                         MainCells(infoCell: "Выгодные предложения", backgroundCell: UIColor(patternImage: UIImage(named: "backgroundImageCell2")!), imageCell: UIImage(systemName: "flame")!),
                         MainCells(infoCell: "Кешбэк с покупок до 10%", backgroundCell: UIColor(patternImage: UIImage(named: "backgroundImageCell3")!), imageCell: UIImage(systemName: "tengesign.circle")!)]
