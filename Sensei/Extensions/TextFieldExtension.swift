//
//  TextFieldExtension.swift
//  My_SmartBottle
//
//  Created by Jacobo Koenig on 1/12/19.
//  Copyright © 2019 Binary Mango. All rights reserved.
//

import UIKit

extension UITextField {
    
    func setPaddingPoints(_ amount: CGFloat) {
        self.setLeftPaddingPoints(amount)
        self.setRightPaddingPoints(amount)
    }
    
    private func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    private func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
