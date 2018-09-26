//
//  String+AddText.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/27.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation
extension String {
    mutating func add(text: String?,
                      separatedBy separator: String) {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text }
    } }
