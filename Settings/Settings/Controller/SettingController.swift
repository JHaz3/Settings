//
//  SettingController.swift
//  Settings
//
//  Created by Jake Haslam on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import Foundation

class SettingsController {
    //MARK:- Singleton
    static let shared = SettingsController()
    
    //MARK: - Source of Truth
    let settings: [Setting] = {
        let music = Setting(name: "music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(name: "App Store", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        return [music, appStore, iBooks]
    }()
    
    //MARK: - Methods
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
