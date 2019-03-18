//
//  StringExtension.swift
//  My_SmartBottle
//
//  Created by Jacobo Koenig on 2/9/19.
//  Copyright © 2019 Binary Mango. All rights reserved.
//

import Foundation

extension String {
    
    var decimal: UInt64 {
        if let value = UInt64(self, radix: 16) {
            return value
        }
        print("error parsing decimal on \(self)")
        return 0
    }
    
    func substring(_ lowerBound: Int, _ upperBound: Int) -> String {
        let firstIndex = self.index(self.startIndex, offsetBy: lowerBound)
        let secondIndex = self.index(self.startIndex, offsetBy: upperBound)

        return String(self[firstIndex...secondIndex])
    }
    
    static var userSelectedUnit: String {
        let drinkSettingsIsOunces = UserManager.current?.drinksSettings == "ounces"
        return drinkSettingsIsOunces ? "oz" : "ml"
    }
    
    // Dev
    func getAsciiParameterIn(position: Int) -> String {
        var lowerBound = 0
        var upperBound = self.count - 1
        
        var currentPosition = 0
        
        for i in 0..<self.count {
            if currentPosition == position {
                if self[index(startIndex, offsetBy: i)] == ":" {
                    upperBound = i - 1
                }
            } else {
                if self[index(startIndex, offsetBy: i)] == ":" {
                    currentPosition += 1
                    if currentPosition == position {
                        lowerBound = i + 1
                    }
                }
            }
        }
        
        return self.substring(lowerBound, upperBound)
    }
    
}
