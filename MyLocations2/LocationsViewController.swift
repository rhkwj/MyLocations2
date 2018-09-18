//
//  LocationsViewController.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/14.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import CoreLocation

var locations = [Location]()

class LocationsViewController: UITableViewController {
    var managedObjectContext: NSManagedObjectContext!
    
    // MARK: - Table View Delegates
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "LocationCell", for: indexPath)
            let location = locations[indexPath.row]
            let descriptionLabel = cell.viewWithTag(100) as! UILabel
            descriptionLabel.text = location.locationDescription
            let addressLabel = cell.viewWithTag(101) as! UILabel
            if let placemark = location.placemark  {
                var text = ""
                if let s = placemark.subThoroughfare {
                    text += s + " " }
                if let s = placemark.thoroughfare {
                    text += s + ", "
                }
                if let s = placemark.locality {
                    text += s }
                addressLabel.text = text
            } else {
                addressLabel.text = ""
            }
            return cell
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        let fetchRequest = NSFetchRequest<Location>()
        // 2
        let entity = Location.entity()
        fetchRequest.entity = entity
        // 3
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        do { // 4
            locations = try managedObjectContext.fetch(fetchRequest)
        } catch {
            fatalCoreDataError(error)
        }
    }
    
    
    }


