//
//  UserInfoCollectionViewController.swift
//  TestApp1
//
//  Created by Danil G. on 15.01.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

class UserInfoCollectionViewController: UICollectionViewController {

    let friends = Friends.makeFriends().sorted{ $0.userName < $1.userName}
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

   
    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        friends.count
    }


    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? UserInfoCollectionViewCell {
                cell.userImages.image = UIImage(named: "EmojiEvil")
                
                return cell
            }
        
        
            return UICollectionViewCell()
    }

   

}
