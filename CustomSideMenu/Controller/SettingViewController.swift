//
//  SettingViewController.swift
//  CustomSideMenu
//
//  Created by Office on 6/5/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

      //MARK: Properties
      
      var userName:String?
      
      var delegate:HomeViewControllerProtocol?
      //MARK: Init
      
      
      override func viewDidLoad() {
          super.viewDidLoad()
        if let userName = userName{
            print(userName)
        }
        
          configureUI()
      }
      
    
      
      //MARK: Handeler
      
      @objc func handelDismiss(){
          dismiss(animated: true, completion: nil)
      }
      
      func configureUI(){
            view.backgroundColor = UIColor.gray
        
            navigationController?.navigationBar.barTintColor = .darkGray
            navigationController?.navigationBar.prefersLargeTitles = true
            navigationItem.title = "Settings"
            navigationController?.navigationBar.barStyle = .black
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_close_white_24dp").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handelDismiss))
        }

}
