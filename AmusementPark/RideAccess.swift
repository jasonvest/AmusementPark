//
//  RideAccess.swift
//  AmusementPark
//
//  Created by Jason Vest on 7/22/19.
//  Copyright © 2019 Jason Vest. All rights reserved.
//

import Foundation

enum RideAccess: String {
    case allRides
    case skipLines
    static func determineRideAccess(entrantSubType subType: EntrantSubType) -> [RideAccess] {
        var rideAccess: [RideAccess] = []
        switch subType {
        case .vipGuest: rideAccess.append(.skipLines)
        default: rideAccess.append(.allRides)
        }
        return rideAccess
    }
}
