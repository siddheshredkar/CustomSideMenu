//
//  HomeViewController.swift
//  CustomSideMenu
//
//  Created by Office on 6/4/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK: Properties
    
    var delegate:HomeViewControllerProtocol?
    
    //MARK: Init
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        configureNavigationBar()
    }
    
  
    
    //MARK: Handeler
    
    @objc func hadelMenuToggel(){
        delegate?.handelMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar(){
          navigationController?.navigationBar.barTintColor = .darkGray
          navigationController?.navigationBar.barStyle = .black
          
          navigationItem.title = "Home"
          navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_menu_white_36dp").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(hadelMenuToggel))
      }

}
