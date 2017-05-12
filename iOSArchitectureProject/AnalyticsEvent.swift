//
//  AnalyticsEvent.swift
//  iOSArchitectureProject
//
//  Created by Tamar Nachmany on 5/9/17.
//  Copyright © 2017 Girl Develop It. All rights reserved.
//

import Foundation

/// Represents an analytics event for a user interaction with the app.
public final class AnalyticsEvent: NSObject {
    
    /// Whether or not the function `send()` has been called on the AnalyticsEvent instance.
    private var sent = false
    
    /// Logs the analytics event.
    func send() {
        sent = true
    }
}

