//
//  ReusableView.swift
//  PowerPOP
//
//  Created by Ashish Personal on 26/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

protocol ReusableView: AnyObject { }

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String { String(describing: self) }
}

extension UITableViewCell: ReusableView { }

extension UICollectionViewCell: ReusableView { }
