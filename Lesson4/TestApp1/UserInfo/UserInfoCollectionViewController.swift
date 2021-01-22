//
//  UserInfoCollectionViewController.swift
//  TestApp1
//
//  Created by Danil G. on 15.01.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

class UserInfoCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

   
    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          
            return 1
    }


    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? UserInfoCollectionViewCell {
                cell.userInfoImage.image = UIImage(named: "EmojiEvil")
                
                return cell
            }
        
        
            return UICollectionViewCell()
    }

   

}
