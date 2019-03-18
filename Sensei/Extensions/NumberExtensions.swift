//
//  FloatExtension.swift
//  My_SmartBottle
//
//  Created by Jacobo Koenig on 2/9/19.
//  Copyright © 2019 Binary Mango. All rights reserved.
//

import Foundation

extension Float {
    func toUserSelectedUnit() -> Float {
        let drinkSettingsIsOunces = UserManager.current?.drinksSettings == "ounces"
        return drinkSettingsIsOunces ? self/29.57 : self
    }
}

extension Int {
    func toUserSelectedUnit() -> Float {
        let drinkSettingsIsOunces = UserManager.current?.drinksSettings == "ounces"
        return drinkSettingsIsOunces ? Float(self)/29.57 : Float(self)
    }
}
