//
//  ContainerViewController.swift
//  CustomSideMenu
//
//  Created by Office on 6/4/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    //MARK: Properties
    
    var menuController:MenuViewController!
    var centerController:UIViewController!
    var isExpanded = false
    
    //MARK: Init
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
       configureHomeViewControler()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
        return .slide
    }
    
    override var prefersStatusBarHidden: Bool{
        return isExpanded
    }
    
    //MARK: Handeler
    
    
    func configureHomeViewControler(){
        let controller = HomeViewController()
        controller.delegate = self
        centerController = UINavigationController(rootViewController: controller)
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
 
    
    func configureMenuViewController(){
       
        if menuController == nil{
            menuController = MenuViewController()
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            
        }
    }
    
    func animatePanel(shouldExpand:Bool,menuOption:MenuOption?){
        
        if shouldExpand{
           //showMenu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8,initialSpringVelocity: 0,options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
            
        }else{
           //hideMenu
         
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }) { (_) in
                guard let menuOption = menuOption else{
                    return
                }
                self.didSelectMenuOption(menuOption: menuOption)
            }
        }
        animateSatusBar()
    }

    
    func didSelectMenuOption(menuOption:MenuOption){
        switch menuOption {
       
        case .Profile:
            print("show Profile")
            configureHomeViewControler()
        case .Inbox:
            print("show Inbox")
        case .Notification:
            print("show Notification")
        case .Settings:
            let controller = SettingViewController()
            controller.userName = "BatMan"
            present(UINavigationController(rootViewController: controller),animated: true,completion: nil)
        }
    }

    
    func animateSatusBar(){
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8,initialSpringVelocity: 0,options: .curveEaseInOut, animations: {
            self.setNeedsStatusBarAppearanceUpdate()
        }, completion: nil)
    }


}


extension ContainerViewController:HomeViewControllerProtocol{
    
    
    func handelMenuToggle(forMenuOption menuOption: MenuOption?) {
         if !isExpanded {
            configureMenuViewController()
         }
               
        isExpanded = !isExpanded
        animatePanel(shouldExpand: isExpanded, menuOption: menuOption)
    }
    
    
   
    
    
}


