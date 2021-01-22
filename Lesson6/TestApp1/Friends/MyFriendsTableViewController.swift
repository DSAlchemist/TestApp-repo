//
//  MyFriendsTableViewController.swift
//  TestApp1
//
//  Created by Danil G. on 14.01.2021.
//

import UIKit

class MyFriendsTableViewController: UITableViewController {

    let friends = Friends.makeFriends().sorted{ $0.userName < $1.userName}
    let letterControl = LetterControl(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Переработать LetterControl через view
        view.addSubview(letterControl)
        letterControl.translatesAutoresizingMaskIntoConstraints = false
        letterControl.letters = Array(Set( friends.map { String ($0.userName.prefix(1)) })).sorted()
        letterControl.setupView()
        
//        letterControl.addTarget(self, action: #selector(selectedLetter), for: .valueChanged)
        //Расположение контрола
        NSLayoutConstraint.activate([
//            letterControl.topAnchor.constraint(equalTo: tableView.topAnchor), //привязка к верхней границе tableView
//            letterControl.bottomAnchor.constraint(equalTo: tableView.bottomAnchor), //привязка к нижней границе tableView
            letterControl.centerYAnchor.constraint(equalTo: tableView.centerYAnchor), //центрирование по Y
            letterControl.heightAnchor.constraint(equalToConstant: 200), //высота контрола
//            letterControl.trailingAnchor.constraint(equalTo: tableView.trailingAnchor, constant: <#T##CGFloat#>), //привязка к границе (правая/левая) tableView
            letterControl.widthAnchor.constraint(equalToConstant: 30), //ширина контрола
            
            ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
    }
    
    @objc func selectedLetter () {
        let letter = letterControl.selectedLetter
        let userIndex = friends.firstIndex { (user) -> Bool in
            return String(user.userName.prefix(1)) == letter
        }
        guard let index = userIndex else {
            return
            
        }
        tableView.scrollToRow(at: IndexPath(row: index, section: 0), at: .top, animated: true)
    }
    
    
        // MARK: - Table view data source

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            friends.count
        }
    
    //Создание header
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "Hello"
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
