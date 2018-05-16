//
//  YelpAPIResponse.swift
//  kitsune
//
//  Created by Trent Greene on 5/15/18.
//  Copyright © 2018 greene. All rights reserved.
//

import Foundation

class YelpAPIResponse: Codable {
    var total: Int?
    var businesses: [Result]?
}
