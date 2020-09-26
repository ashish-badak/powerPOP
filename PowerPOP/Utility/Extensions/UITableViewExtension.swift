//
//  UITableViewExtension.swift
//  PowerPOP
//
//  Created by Ashish Personal on 26/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

extension UITableView {
    func register<Cell: UITableViewCell>(_ type: Cell.Type) {
        self.register(Cell.self, forCellReuseIdentifier: Cell.reuseIdentifier)
    }
    
    func register<Cell: UITableViewCell>(_ type: Cell.Type) where Cell: NibLoadableView {
        self.register(Cell.nib, forCellReuseIdentifier: Cell.reuseIdentifier)
    }
}
