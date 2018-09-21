//
//  Location+CoreDataClass.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/10.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Location)
public class Location: NSManagedObject,MKAnnotation {
    
    public var title: String? {
        if locationDescription.isEmpty {
            return "(No Description)"
        } else {
            return locationDescription
        }
    }
    
    public var subtitle: String? {
        return category
    }
    
}
