//
//  UIViewControllerExtension.swift
//  kilouett
//
//  Created by Jacobo Koenig on 10/4/18.
//  Copyright © 2018 Kilouett. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlert(titled title: String, withMessage message: String? = nil, buttonOneTitle: String = "OK", buttonTwoTitle: String = "Delete", completion: (()->())? = nil, delete: (()->())? = nil) {
        
        var ac: UIAlertController!
        ac = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        ac.addAction(UIAlertAction(title: buttonOneTitle, style: .default) { _ in
            completion?()
        })
        if delete != nil {
            ac.addAction(UIAlertAction(title: buttonTwoTitle, style: .destructive) { _ in
                delete?()
            })
        }
        self.present(ac, animated: true)
    }
    
    func requestConfirmation(with title: String, and message: String? = nil, buttonTitle: String = "OK", completion: (()->())? = nil) {
        var ac: UIAlertController!
        ac = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        ac.addAction(UIAlertAction(title: buttonTitle, style: .destructive) { _ in
            completion?()
        })
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(ac, animated: true)
    }
    
}
