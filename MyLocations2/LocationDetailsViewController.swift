//
//  LocationDetailsViewController.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/6.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .short
    return formatter
}()


class LocationDetailsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionTextView.text = ""
        categoryLabel.text = ""
        latitudeLabel.text = String(format: "%.8f",coordinate.latitude)
        longitudeLabel.text = String(format: "%.8f",coordinate.longitude)
        if let placemark = placemark {
            addressLabel.text = string(from: placemark)
        } else {
            addressLabel.text = "No Address Found"
        }
        dateLabel.text = format(date: Date())
    }
   
    
    // MARK:- Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TagLocation" {
    let controller = segue.destination as! LocationDetailsViewController
    controller.coordinate = location!.coordinate
    controller.placemark = placemark
      }
    }

    
    
    func format(date: Date) -> String {
        return dateFormatter.string(from: date)
    }
    
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    // MARK:- Actions
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
}

var coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
var placemark: CLPlacemark?




