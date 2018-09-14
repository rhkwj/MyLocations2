//
//  Functions.swift
//  MyLocations2
//
//  Created by Kim Yeon Jeong on 2018/9/10.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation

let applicationDocumentsDirectory: URL = {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}()

let CoreDataSaveFailedNotification = Notification.Name(rawValue: "CoreDataSaveFailedNotification")
func fatalCoreDataError(_ error: Error) { print("*** Fatal error: \(error)"); NotificationCenter.default.post( name: CoreDataSaveFailedNotification, object : nil)
}

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
    
}
