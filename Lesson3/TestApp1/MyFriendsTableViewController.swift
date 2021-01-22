//
//  MyFriendsTableViewController.swift
//  TestApp1
//
//  Created by Danil G. on 08.01.2021.
//

import UIKit

class MyFriendsTableViewController: UITableViewController {

    let friends: [String] = [
            "Сергей Иванов",
            "Антон Петров",
            "Ксения Антонова",
            "Юлия Федорова",
            "Петр Епихин",
            "Евгения Пархоменко"
        ]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        // MARK: - Table view data source

            override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return friends.count
            }

            override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyFriendsTableViewCell {
                    cell.myFriendsLabel.text = friends[indexPath.row]
                    cell.detailsImage.image = UIImage(named: "User")

                    return cell
            }
                
           return UITableViewCell()
    }
}
