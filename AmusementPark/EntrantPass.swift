//
//  EntrantPass.swift
//  AmusementPark
//
//  Created by Jason Vest on 7/23/19.
//  Copyright © 2019 Jason Vest. All rights reserved.
//

import Foundation

struct EntrantPass  {
    var accessibleAreas: [ParkAreas]
    var rideAccessRules: [RideAccess]
    var availableDiscounts: AvailableDiscounts
    
    init(entrantSubType subType: EntrantSubType)   {
        self.accessibleAreas = ParkAreas.determineAccessAreas(entrantSubType: subType)
        self.rideAccessRules = RideAccess.determineRideAccess(entrantSubType: subType)
        self.availableDiscounts = AvailableDiscounts(entrantSubType: subType)
    }
}
