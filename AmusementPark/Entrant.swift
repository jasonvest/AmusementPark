//
//  Entrant.swift
//  AmusementPark
//
//  Created by Jason Vest on 7/22/19.
//  Copyright © 2019 Jason Vest. All rights reserved.
//

import Foundation

enum EntrantSubType    {
    case classicGuest
    case vipGuest
    case freeChildGuest
    case hourlyEmployeeFood
    case hourlyEmployeeRide
    case hourlyEmployeeMaint
    case manager
}


class ParkEntrant: Swipeable   {
    var entrantSubType: EntrantSubType
    var entrantPass: EntrantPass
    
    init(entrantSubType subType: EntrantSubType) {
        self.entrantSubType = subType
        self.entrantPass = EntrantPass(entrantSubType: subType)
    }
    func swipeEntrant(pass: [ParkArea], areaRequested: ParkAreas) -> Bool {
        return pass.contains(areaRequested)
    }
    func swipeEntrant(pass: [RideAccess], rideBenefitRequested: RideAccess) -> Bool {
        return pass.contains(rideBenefitRequested)
    }
    func swipeEntrant(pass: AvailableDiscounts, itemType: SellableItem) -> Double {
        
    }
}

class ParkGuest: ParkEntrant    {
    let guestInfo: GuestInfo
    
    init(entrantSubType subType: EntrantSubType, dateOfBirth: Date? = nil) throws {
        guard let dob = dateOfBirth else {
            throw EntrantError.missingDOB
        }
        
        if subType == .freeChildGuest && !ParkGuest.isChild(dateOfBirth: dob) {
            throw EntrantError.overAge
        }
        self.guestInfo = GuestInfo(dateOfBirth: dob)
        super.init(entrantSubType: subType)
    }
    
    static func isChild(dateOfBirth dob: Date) -> Bool {
        let today = Date()
        let fiveYearInterval: TimeInterval = ((((60.0 * 60.0) * 24) * 365) * 5)
        let checkDate = Date(timeInterval: fiveYearInterval, since: dob)
        
        if checkDate >= today {
            return true
        } else  {
            return false
        }
    }
}

class ParkEmployee: ParkEntrant   {
    let employeeInfo: EmployeeInfo
    
    init(personalInfo info: EmployeeInfo, entrantSubType subType: EntrantSubType) throws {
        if info.firstName.isEmpty   {
            throw EntrantError.firstName
        } else if info.lastName.isEmpty {
            throw EntrantError.lastName
        } else if info.streetAddress.isEmpty    {
            throw EntrantError.streetAddress
        } else if info.city.isEmpty {
            throw EntrantError.city
        } else if info.state.isEmpty    {
            throw EntrantError.state
        } else if info.zipCode.isEmpty  {
            throw EntrantError.zipCode
        } else  {
            self.employeeInfo = info
        }
        super.init(entrantSubType: subType)
    }
}
