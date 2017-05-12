//
//  AppDelegate.swift
//  iOSArchitectureProject
//
//  Created by Tamar Nachmany on 5/7/17.
//  Copyright © 2017 Girl Develop It. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // TODO: Pass in a delegate here (a type that conforms to ButtonAnalyticsHandling)
        let delegate = ButtonDelegate()
        window?.rootViewController = ViewController(delegate: delegate)
        window?.makeKeyAndVisible()
        return true
    }
}
