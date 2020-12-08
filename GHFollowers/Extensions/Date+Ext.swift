//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Sina Rabiei on 12/8/20.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
