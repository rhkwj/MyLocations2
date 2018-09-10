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
//        hudView.backgroundColor = UIColor(red: 1, green: 0, blue: 0,alpha: 0.5)
        return hudView
    }


    override func draw(_ rect: CGRect) {
        let boxWidth: CGFloat = 96
        let boxHeight: CGFloat = 96
        let boxRect = CGRect(
            x: round((bounds.size.width - boxWidth) / 2),
            y: round((bounds.size.height - boxHeight) / 2),
            width: boxWidth,
            height: boxHeight)
        let roundedRect = UIBezierPath(roundedRect: boxRect,cornerRadius: 10)
        UIColor(white: 0.3, alpha: 0.8).setFill()
        roundedRect.fill()
    
        // Draw checkmark
        if let image = UIImage(named: "Checkmark") {
            let imagePoint = CGPoint(
                x: center.x - round(image.size.width / 2),
                y: center.y - round(image.size.height / 2) - boxHeight / 8)
            image.draw(at: imagePoint)
        }
        
        // Draw the text
        let attribs = [
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16),
            NSAttributedStringKey.foregroundColor: UIColor.white ]
        let textSize = text.size(withAttributes: attribs)
        let textPoint = CGPoint(
            x: center.x - round(textSize.width / 2),
            y: center.y - round(textSize.height / 2) + boxHeight / 4)
        text.draw(at: textPoint, withAttributes: attribs)
    
    }
}

