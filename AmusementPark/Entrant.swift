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
    func swipeEntrant(pass: EntrantPass) -> Bool {
        return true
    }
}

class ParkGuest: ParkEntrant    {
    var dateOfBirth: Date?
    
    init(entrantSubType subType: EntrantSubType, dateOfBirth dob: Date? = nil) throws {
        if subType == .freeChildGuest && dob == nil {
            throw EntrantError.dob
        }
        self.dateOfBirth = dob
        super.init(entrantSubType: subType)
    }
}

class ParkEmployee: ParkEntrant   {
    var firstName: String
    var lastName: String
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: String
    
    init(firstName first: String, lastName last: String, streetAddress street: String, city: String, state: String, zipCode zip: String, entrantSubType subType: EntrantSubType) {
        self.firstName = first
        self.lastName = last
        self.streetAddress = street
        self.city = city
        self.state = state
        self.zipCode = zip
        super.init(entrantSubType: subType)
    }
}
