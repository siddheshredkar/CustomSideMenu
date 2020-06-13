//
//  MenuOptions.swift
//  CustomSideMenu
//
//  Created by Office on 6/5/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

enum MenuOption:Int,CustomStringConvertible {
   
    case Profile
    case Inbox
    case Notification
    case Settings
    
    
    var description: String{
            switch self {
            case .Profile:
                return "Profile"
            case .Inbox:
                return "Inbox"
            case .Notification:
                return "Notification"
            case .Settings:
                return "Settings"
            }
    }
    
    var image: UIImage{
            switch self {
            case .Profile:
                return #imageLiteral(resourceName: "baseline_perm_identity_white_24dp")
            case .Inbox:
                return #imageLiteral(resourceName: "baseline_archive_white_24dp")
            case .Notification:
                return #imageLiteral(resourceName: "baseline_notifications_white_24dp")
            case .Settings:
                return #imageLiteral(resourceName: "baseline_settings_white_24dp")
            }
    }
    
    
    
}
