//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Jake Haslam on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    //Step one
    func settingSwtichTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    //MARK:- Outlets
    @IBOutlet weak var settingIcon: UIImageView!
    
    @IBOutlet weak var settingNameLabel: UILabel!
   
    @IBOutlet weak var settingSwitch: UISwitch!
    //MARK:- Properties
   //Weak means the retain cycle can only be one never more so we dont have a memory wont leak.
   // Step 2
    weak var delegate: SettingTableViewCellDelegate?
    //MARK:- Actions
    
    @IBAction func settingSwtitchToggled(_ sender: Any) {
        delegate?.settingSwtichTapped(for: self)
    }
    
    //MARK: - Helper Method
    
    func updateViews(with setting: Setting) {
        settingIcon.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        // Syntactic sugar baby ? = if, : = else
        backgroundColor = setting.isOn ? .cyan : .white
        
//        if setting.isOn {
//            backgroundColor = .cyan
//        } else {
//            backgroundColor = .white
//        } this if elese is the same as above ? : 
    }
}

