//
//  AppDelegate.swift
//  Alarm Clock
//
//  Created by twb on 6/7/14.
//  Copyright (c) 2014 alex. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor.redColor()
        self.window!.makeKeyAndVisible()
        window!.rootViewController = AlarmViewController(nibName:nil, bundle: nil)
        return true
        
    

        
    }

}

