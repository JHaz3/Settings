//
//  Setting.swift
//  Settings
//
//  Created by Jake Haslam on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

/**
Creates our Setting Object- *MODEL*
- Properties:
- name: The `String` identifier for the Setting
- icon: `UIImage` that matches the Setting
-isOn: The `Bool` to designate whether the setting is on our not
*/

class Setting {
    
    init(name: String, icon: UIImage?, isSet: Bool) {
        self.name = name
        self.icon = icon
        self.isSet = isSet
    }
    
    let name: String
    let icon: UIImage?
    var isSet: Bool
}
