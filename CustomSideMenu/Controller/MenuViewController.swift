//
//  MenuViewController.swift
//  CustomSideMenu
//
//  Created by Office on 6/4/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

private let reuseIdentifer = "menuOptionCell"

class MenuViewController: UIViewController {
 
    //MARK: Properties
    
    var tableView: UITableView!
    var delegate:HomeViewControllerProtocol?
    
    //MARK: Init
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        
    configureTableView()
       
    }
    
    //MARK: Handeler
    
    func configureTableView(){
        tableView = UITableView()
        tableView.backgroundColor = .darkGray
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
        
        tableView.register(MenuOptionsTableViewCell.self, forCellReuseIdentifier: reuseIdentifer)
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
    
}

extension MenuViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier:reuseIdentifer , for: indexPath) as! MenuOptionsTableViewCell
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.discriptionLabel.text = menuOption?.description
        cell.iconImageView.image = menuOption?.image
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegate?.handelMenuToggle(forMenuOption: menuOption)
    }
    
}
