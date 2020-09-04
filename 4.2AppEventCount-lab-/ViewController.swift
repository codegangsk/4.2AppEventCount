//
//  ViewController.swift
//  4.2AppEventCount-lab-
//
//  Created by Sophie Kim on 2020/09/04.
//  Copyright © 2020 Sophie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var didDisconnectLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    var launchCount = 0
    var disconnectCount = 0
    var becomeActiveCount = 0
    var resignActiveCount = 0
    var foregroundCount = 0
    var backgroundCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
}

extension ViewController {
    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(launchCount) time(s)"
        didDisconnectLabel.text = "The app has disconnected \(disconnectCount) time(s)"
        didBecomeActiveLabel.text = "The app has become active \(becomeActiveCount) time(s)"
        willResignActiveLabel.text  = "The app has resigneded active \(resignActiveCount) time(s)"
        willEnterForegroundLabel.text = "The app has entered foreground \(foregroundCount) time(s)"
        didEnterBackgroundLabel.text = "The app has entered background \(backgroundCount) time(s)"
    }
}

