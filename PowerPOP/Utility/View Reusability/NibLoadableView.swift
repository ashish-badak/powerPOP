//
//  NibLoadableView.swift
//  PowerPOP
//
//  Created by Ashish Personal on 26/09/20.
//  Copyright © 2020 Ashish Badak. All rights reserved.
//

import UIKit

protocol NibLoadableView { }

extension NibLoadableView {
    static var nibName: String { String(describing: self) }
    
    static var nib: UINib { UINib(nibName: nibName, bundle: nil) }
}
