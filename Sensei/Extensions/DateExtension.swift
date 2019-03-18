//
//  DateExtension.swift
//  My_SmartBottle
//
//  Created by Jacobo Koenig on 1/13/19.
//  Copyright © 2019 Binary Mango. All rights reserved.
//

import Foundation

extension Date {
    
    //Strings
    var shortString: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }
    
    //Get any numerical date component such as Year, Month, Date, Hour..
    func get(_ component: Calendar.Component) -> Int {
        let calendar = Calendar.current
        return calendar.component(component, from: self)
    }
    
    //Start and End of Day in Date
    var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }
    
    var endOfDay: Date {
        var components = DateComponents()
        components.day = 1
        components.second = -1
        return Calendar.current.date(byAdding: components, to: startOfDay)!
    }
    
}
