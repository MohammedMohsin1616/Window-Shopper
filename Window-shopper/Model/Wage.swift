//
//  Wage.swift
//  Window-shopper
//
//  Created by Mohammed Mohsin Sayed on 11/17/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price / wage)) 
    }
}
