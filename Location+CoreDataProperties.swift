//
//  Location+CoreDataProperties.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/10.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//
//

import Foundation
import CoreData
import CoreLocation


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var latitude: Double
    @NSManaged public var placemark: CLPlacemark?
    @NSManaged public var locationDescription: String
    @NSManaged public var date: Date
    @NSManaged public var longitude: Double
    @NSManaged public var category: String
    @NSManaged public var photoID: NSNumber?

}
