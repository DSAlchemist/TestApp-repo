//
//  MyFriendsTableViewController.swift
//  TestApp1
//
//  Created by Danil G. on 14.01.2021.
//

import UIKit

class MyFriendsTableViewController: UITableViewController {

    let friends = Friends.makeFriends().sorted{ $0.userName < $1.userName}
    let letterControl = LetterControl(frame: CGRect(x: 100, y: 100, width: 50, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(letterControl)
        letterControl.letters = Array(Set( friends.map { String ($0.userName.prefix(1)) })).sorted()
        letterControl.setupView()
        
        letterControl.addTarget(self, action: #selector(selectedLetter), for: .valueChanged)
        
    }
    
    @objc func selectedLetter () {
        let letter = letterControl.selectedLetter
        
    }
    
    
        // MARK: - Table view data source

            override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            friends.count
            }

            override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyFriendsTableViewCell {
                    cell.myFriendsLabel.text = friends[indexPath.row].userName
                    cell.avatarImage.image = friends[indexPath.row].userAvatar

                    
                    return cell
            }
                
           return UITableViewCell()
    }
}
