//
//  MapViewController.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/21.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreData

var locations = [Location]()


class MapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    var managedObjectContext: NSManagedObjectContext!
    // MARK:- Actions
    @IBAction func showUser() {
        let region = MKCoordinateRegionMakeWithDistance(
            mapView.userLocation.coordinate, 1000, 1000)
        mapView.setRegion(mapView.regionThatFits(region),
                          animated: true)
    }
    
    // MARK:- Private methods
    func updateLocations() {
        mapView.removeAnnotations(locations)
        let entity = Location.entity()
        let fetchRequest = NSFetchRequest<Location>()
        fetchRequest.entity = entity
        locations = try! managedObjectContext.fetch(fetchRequest)
        mapView.addAnnotations(locations)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLocations()
    }
    
    @IBAction func showLocations() {
    }
}

extension MapViewController: MKMapViewDelegate {
}


