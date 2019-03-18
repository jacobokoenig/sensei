//
//  ViewExtension.swift
//  My_SmartBottle
//
//  Created by Jacobo Koenig on 1/21/19.
//  Copyright © 2019 Binary Mango. All rights reserved.
//

import UIKit

extension UIView {
    func clearConstraints() {
        for subview in self.subviews {
            subview.clearConstraints()
        }
        self.removeConstraints(self.constraints)
    }
}
