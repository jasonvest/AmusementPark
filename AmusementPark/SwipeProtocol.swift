//
//  SwipeProtocol.swift
//  AmusementPark
//
//  Created by Jason Vest on 7/23/19.
//  Copyright © 2019 Jason Vest. All rights reserved.
//

import Foundation

protocol Swipeable {
    func swipeEntrant(pass: [ParkArea], areaRequested: ParkArea) -> Bool
    func swipeEntrant(pass: [RideAccess], rideBenefitRequested: RideAccess) -> Bool
    func swipeEntrant(pass: AvailableDiscounts, itemType: SellableItem) -> Double
}
