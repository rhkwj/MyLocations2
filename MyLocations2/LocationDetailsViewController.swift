//
//  LocationDetailsViewController.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/6.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UIKit
class LocationDetailsViewController: UITableViewController {
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
