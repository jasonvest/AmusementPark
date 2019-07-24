//
//  AmusementAreas.swift
//  AmusementPark
//
//  Created by Jason Vest on 7/22/19.
//  Copyright © 2019 Jason Vest. All rights reserved.
//

import Foundation

enum ParkAreas: String  {
    case amusement
    case kitchen
    case rideControl
    case maintenance
    case office
    
    static func determineAccessAreas(entrantSubType subType: EntrantSubType) -> [ParkAreas]    {
        var accessibleAreas: [ParkAreas] = []

        switch subType {
        case .classicGuest, .vipGuest, .freeChildGuest:
            accessibleAreas.append(.amusement)
        case .hourlyEmployeeFood:
            accessibleAreas.append(.amusement)
            accessibleAreas.append(.kitchen)
        case .hourlyEmployeeRide:
            accessibleAreas.append(.amusement)
            accessibleAreas.append(.rideControl)
        case .hourlyEmployeeMaint:
            accessibleAreas.append(.amusement)
            accessibleAreas.append(.kitchen)
            accessibleAreas.append(.rideControl)
            accessibleAreas.append(.maintenance)
        case .manager:
            accessibleAreas.append(.amusement)
            accessibleAreas.append(.kitchen)
            accessibleAreas.append(.rideControl)
            accessibleAreas.append(.maintenance)
            accessibleAreas.append(.office)
        }
        return accessibleAreas
    }
}
