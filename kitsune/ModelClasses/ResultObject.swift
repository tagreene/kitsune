//
//  ResultObject.swift
//  kitsune
//
//  Created by greene on 5/18/18.
//  Copyright © 2018 greene. All rights reserved.
//

import Foundation
import CoreData

public class ResultObject: NSManagedObject {
    convenience init(withResult result: Result, entity: NSEntityDescription, context: NSManagedObjectContext) {
        self.init(entity: entity, insertInto: context)
        
        self.price = result.price
        self.id = result.id
        self.name = result.name
        self.url = result.url
        self.imageURL = result.image_url
        self.country = result.location?.country
        self.state = result.location?.state
        self.city = result.location?.city
        self.zipCode = result.location?.zip_code
        self.address1 = result.location?.address1
        self.address2 = result.location?.address2
        self.address3 = result.location?.address3
        
        self.lastSeen = Date()
        self.favorited = false
        self.rejected = false
        
        self.categories = [String: String]()
        if let categories = result.categories {
            for category in categories {
                // TODO: Make sure the bangs below are safe, or unwrap them correctly
                self.categories?[category.title!] = category.alias!
            }
        }
    }
}
