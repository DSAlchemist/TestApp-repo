//
//  GroupsTableViewCell.swift
//  TestApp1
//
//  Created by Danil G. on 06.01.2021.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var groupImage: UIImageView!
    
    override func layoutSubviews() {
        
        groupImage.layer.cornerRadius = groupImage.frame.width / 2
        groupImage.layer.masksToBounds = true
        groupImage.layer.shadowColor = UIColor.gray.cgColor
        groupImage.layer.shadowOffset = CGSize(width: 5, height: 5)
        groupImage.layer.shadowRadius = 6
        groupImage.layer.shadowOpacity = 0.8
        
    }

}
