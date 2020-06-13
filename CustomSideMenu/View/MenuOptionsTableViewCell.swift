//
//  MenuOptionsTableViewCell.swift
//  CustomSideMenu
//
//  Created by Office on 6/4/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class MenuOptionsTableViewCell: UITableViewCell {

  //MARK: - Properties
    
    let iconImageView:UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
       // iv.backgroundColor = .blue
        return iv
    }()
    
    let discriptionLabel:UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "sampleText"
        return label
    }()
    
    
    
  //MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        selectionStyle = .none
        
        addSubview(iconImageView)
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leftAnchor.constraint(equalTo: leftAnchor,constant: 12).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(discriptionLabel)
        discriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        discriptionLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        discriptionLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor,constant: 12).isActive = true
           
        
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
  //MARK: - Handeler
    
    
 
    
}
