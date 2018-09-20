//
//  Staff.swift
//  Screener
//
//  Created by Alex Quinlivan on 21/09/18.
//  Copyright © 2018 Storypark Ltd. All rights reserved.
//

import Foundation

struct Staff: Codable {
    let id: Int
    let name: String
    let role: String
    let location: StaffLocation
}
