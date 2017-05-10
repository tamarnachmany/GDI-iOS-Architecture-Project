//
//  ButtonAnalyticsEventHandling.swift
//  iOSArchitectureProject
//
//  Created by Tamar Nachmany on 5/7/17.
//  Copyright © 2017 Girl Develop It. All rights reserved.
//

import Foundation

/// Protocol for types that handle analytics logging for user interactions with buttons.
protocol ButtonAnalyticsEventHandling: class {
    
    /// Sends an analytics event.
    ///
    /// - Parameter numberOfEvents: The number of analytics events that have not yet been sent.
    func sendEvent(_ events: Int)
    
}
