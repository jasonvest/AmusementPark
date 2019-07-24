//
//  Discounts.swift
//  AmusementPark
//
//  Created by Jason Vest on 7/22/19.
//  Copyright © 2019 Jason Vest. All rights reserved.
//

import Foundation

struct AvailableDiscounts {
    var foodDiscount: Double
    var merchDiscount: Double
    
    init(entrantSubType type: EntrantSubType) {
        switch type {
        case .vipGuest:
            foodDiscount = 0.10
            merchDiscount = 0.20
        case .hourlyEmployeeFood, .hourlyEmployeeRide, .hourlyEmployeeMaint:
            foodDiscount = 0.15
            merchDiscount = 0.25
        case .manager:
            foodDiscount = 0.25
            merchDiscount = 0.25
        case .classicGuest, .freeChildGuest:
            foodDiscount = 0.0
            merchDiscount = 0.0
        }
    }
}
