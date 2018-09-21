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

    @IBAction func showLocations() {
    }
}

extension MapViewController: MKMapViewDelegate {
}
