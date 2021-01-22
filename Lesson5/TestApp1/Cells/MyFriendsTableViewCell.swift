//
//  MyFriendsTableViewCell.swift
//  TestApp1
//
//  Created by Danil G. on 15.01.2021.
//

import UIKit

class MyFriendsTableViewCell: UITableViewCell {

    @IBOutlet weak var myFriendsLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func layoutSubviews() {
        
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
        avatarImage.layer.masksToBounds = true
        avatarImage.layer.shadowColor = UIColor.green.cgColor
        avatarImage.layer.shadowOffset = CGSize(width: 10, height: 10)
        avatarImage.layer.shadowRadius = 10
        avatarImage.layer.shadowOpacity = 0.8
        
        
    }
    
    
    

}
