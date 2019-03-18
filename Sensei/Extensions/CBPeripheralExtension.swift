//
//  CBPeripheralExtension.swift
//  My_SmartBottle
//
//  Created by Jacobo Koenig on 2/19/19.
//  Copyright © 2019 Binary Mango. All rights reserved.
//

import Foundation
import CoreBluetooth

extension CBPeripheral {
    
    func toBottle() -> Bottle {
        return Bottle.initNewOrGetExistingBottle(with: self)
    }
    
}
