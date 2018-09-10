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


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var latitude: Double
    @NSManaged public var placemark: NSObject?
    @NSManaged public var locationDescription: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var longitute: Double
    @NSManaged public var category: String?

}
