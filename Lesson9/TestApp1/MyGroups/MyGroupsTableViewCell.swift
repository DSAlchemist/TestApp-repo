//
//  MyGroupsTableViewCell.swift
//  TestApp1
//
//  Created by Danil G. on 06.01.2021.
//

import UIKit

class MyGroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var myGroupsLabel: UILabel!
    @IBOutlet weak var groupImage: UIImageView!
    
    override func layoutSubviews() {
        
        groupImage.layer.cornerRadius = groupImage.frame.width / 2
        groupImage.layer.masksToBounds = true
        groupImage.layer.shadowColor = UIColor.gray.cgColor
        groupImage.layer.shadowOffset = CGSize(width: 10, height: 10)
        groupImage.layer.shadowRadius = 5
        groupImage.layer.shadowOpacity = 0.8
        
    }
    
    
}
