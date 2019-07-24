//
//  EntrantError.swift
//  AmusementPark
//
//  Created by Jason Vest on 7/23/19.
//  Copyright © 2019 Jason Vest. All rights reserved.
//

import Foundation

enum EntrantError: Error   {
    case dob
    case firstName
    case lastName
    case streetAddress
    case city
    case state
    case zipCode
}
