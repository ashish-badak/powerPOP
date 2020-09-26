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
    
    func dequeue<Cell: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> Cell {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: Cell.reuseIdentifier, for: indexPath) as? Cell
            else {
                fatalError("Failed to dequeue cell with reuseIdentifier: \(Cell.reuseIdentifier)")
        }
        
        return cell
    }
}
