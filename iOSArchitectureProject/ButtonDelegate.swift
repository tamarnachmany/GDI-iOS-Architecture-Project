//
//  ButtonDelegate.swift
//  iOSArchitectureProject
//
//  Created by Tamar Nachmany on 5/10/17.
//  Copyright © 2017 Girl Develop It. All rights reserved.
//

import Foundation

public class ButtonDelegate: NSObject, ButtonAnalyticsEventHandling {
    
    public func sendEvent(_ events: [AnalyticsEvent]) {
        if events.count >= 5 {
            // Iterates through the array of analytics events and calls send on each one.
            _ = events.map { $0.send() }
        } else {
            // If there are fewer than five analytics events to send, do not send the analytics events.
            return
        }
    }
}
