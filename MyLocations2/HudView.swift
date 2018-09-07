//
//  HudView.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/7.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UIKit

class HudView: UIView {
    var text = ""
    class func hud(inView view: UIView, animated: Bool) -> HudView {
        let hudView = HudView(frame: view.bounds)
        hudView.isOpaque = false
        view.addSubview(hudView)
        view.isUserInteractionEnabled = false
        hudView.backgroundColor = UIColor(red: 1, green: 0, blue: 0,alpha: 0.5)
        return hudView
    }
}

