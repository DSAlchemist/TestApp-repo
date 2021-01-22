//
//  DetailsCollectionViewController.swift
//  TestApp1
//
//  Created by Danil G. on 08.01.2021.
//

import UIKit



class DetailsCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }


    // MARK: UICollectionViewDataSource

    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? DetailsCollectionViewCell {
            cell.detailsImage.image = UIImage(named: "User")
            
            return cell
        }
    
    
        return UICollectionViewCell()
    }

    

}
