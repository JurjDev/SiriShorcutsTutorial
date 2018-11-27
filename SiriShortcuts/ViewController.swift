//
//  ViewController.swift
//  SiriShortcuts
//
//  Created by Jorge Loc Rubio on 11/23/18.
//  Copyright © 2018 jurjdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userActivityBundle = "com.jurjdev.SiriShortcuts.sayHI"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupIntents()
    }
    
    func setupIntents(){
        let activity = NSUserActivity(activityType: userActivityBundle)
        activity.title = "Say Hi"
        activity.userInfo = ["speech" : "hi"]
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        activity.persistentIdentifier = NSUserActivityPersistentIdentifier(userActivityBundle)
        view.userActivity = activity
        activity.becomeCurrent()
    }
    
    public func sayHi() {
        
        let alert = UIAlertController(title: "Hi There!",
                                      message: "Hey there! Glad to see you got this working!",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK",
                                      style: .default,
                                      handler: nil))
        present(alert, animated: true, completion: nil)
    }


}

