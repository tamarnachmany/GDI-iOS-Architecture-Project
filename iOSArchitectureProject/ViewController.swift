//
//  ViewController.swift
//  iOSArchitectureProject
//
//  Created by Tamar Nachmany on 5/7/17.
//  Copyright © 2017 Girl Develop It. All rights reserved.
//

import UIKit

/// TODO: Come up with a better name for this type and rename it from `ViewController` to something else. Note: UIViewController is the super class so you want to rename the bit after the colon.
class ViewController: UIViewController {

    private var analyticsEventsArray: [AnalyticsEvent] = [AnalyticsEvent]()
    private weak var delegate: ButtonAnalyticsEventHandling?
    
    /// Initializes a `ViewController` instance with a delegate used to handle logging analytics for interactions with the button.
    ///
    /// - Parameter delegate: Handles interactions with the button.
    init(delegate: ButtonAnalyticsEventHandling?) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Makes new button
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(userDidTapButton), for: .touchUpInside)
        
        // Lays out button in the center of the view controller's `root view`.
        view.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
            ])
    }
    
    /// TODO: Unit test the logic in here. Validate that when an array of five elements is passed in, send() is called and that when an array of fewer than five elements is passed in, send() is not called.
    /// You will want to do it by refactoring this to use the `delegation` pattern to make the app more `modular`.
    @objc private func userDidTapButton() {
        analyticsEventsArray.append(AnalyticsEvent())
        
        if analyticsEventsArray.count >= 5 {
            // Iterates through the array of analytics events and calls send on each one.
            _ = analyticsEventsArray.map { $0.send() }
            analyticsEventsArray.removeAll()
        } else {
            // If there are fewer than five analytics events to send, do not send the analytics events.
            return
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

