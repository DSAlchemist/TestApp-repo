//
//  GroupsTableViewController.swift
//  TestApp1
//
//  Created by Danil G. on 06.01.2021.
//

import UIKit

class GroupsTableViewController: UITableViewController {
    
    let groups: [String] = [
        "Hi-tech",
        "Auto",
        "PC Building",
        "Sport",
        "F1 News",
        "WRC News",
        "Podcasts",
        "World Code",
        "Scince",
        "Design",
        "Music",
        "Movie"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? GroupsTableViewCell {
            cell.groupLabel.text = groups[indexPath.row]
            cell.groupImage.image = UIImage(named: "pngwing-2")
            
            return cell
        }
        
        return UITableViewCell()
        
    }
    
}
