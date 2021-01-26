//
//  MyGroupsTableViewController.swift
//  TestApp1
//
//  Created by Danil G. on 06.01.2021.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {
    
    var groups: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyGroupsTableViewCell {
            cell.myGroupsLabel.text = groups[indexPath.row]
            cell.groupImage.image = UIImage(named: "N72")
            
            return cell
            
        }
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func unwindFromTableViewController(_ segue: UIStoryboardSegue) {
    
        guard let tableViewController = segue.source as? GroupsTableViewController,
              let indexPath = tableViewController.tableView.indexPathForSelectedRow else { return }
        
        let group = tableViewController.groups[indexPath.row]
        
        if groups.contains(group) { return }
        
        groups.append(group)
        tableView.reloadData()
    }

}
