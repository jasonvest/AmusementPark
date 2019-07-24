//
//  SwipeProtocol.swift
//  AmusementPark
//
//  Created by Jason Vest on 7/23/19.
//  Copyright © 2019 Jason Vest. All rights reserved.
//

import Foundation

protocol Swipeable {
    func swipeEntrant(pass: EntrantPass) -> Bool
}
