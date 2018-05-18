//
//  Result.swift
//  kitsune
//
//  Created by Trent Greene on 5/15/18.
//  Copyright © 2018 greene. All rights reserved.
//

import Foundation

class Result: Codable {
    var rating: Double?
    var price: String?
    var id: String?
    var categories: [Category]?
    var review_count: Int?
    var name: String?
    var url: String?
    var image_url: String?
    var location: ResultLocation?
    
    // Set this value when dequeued?
    var lastSeen: Date?
}
