//
//  UICollectionViewExtension.swift
//  PowerPOP
//
//  Created by Ashish Personal on 26/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<Cell: UICollectionViewCell>(_ type: Cell.Type) {
        self.register(Cell.self, forCellWithReuseIdentifier: Cell.reuseIdentifier)
    }
    
    func register<Cell: UICollectionViewCell>(_ type: Cell.Type) where Cell: NibLoadableView {
        self.register(Cell.nib, forCellWithReuseIdentifier: Cell.reuseIdentifier)
    }
}
