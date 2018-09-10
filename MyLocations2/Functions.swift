//
//  Functions.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/10.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
    
}
