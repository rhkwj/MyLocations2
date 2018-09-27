//
//  MyTabBarController.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/27.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UIKit
class MyTabBarController: UITabBarController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override var childViewControllerForStatusBarStyle:UIViewController?{
        return nil
    }
    
}
