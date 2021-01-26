//
//  MyFriendsTableViewController.swift
//  TestApp1
//
//  Created by Danil G. on 14.01.2021.
//

import UIKit

class MyFriendsTableViewController: UITableViewController {

    let friends = Friends.makeFriends().sorted{ $0.userName < $1.userName}
    var filteredFriends = [Users]()
    var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    var filtering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    let searchController = UISearchController(searchResultsController: nil)
    var friendSections = [MyFriendsSections]()
    
//    let letterControl = LetterControl(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        //Переработать LetterControl через view
//        view.addSubview(letterControl)
//        letterControl.translatesAutoresizingMaskIntoConstraints = false
//        letterControl.letters = Array(Set( friends.map { String ($0.userName.prefix(1)) })).sorted()
//        letterControl.setupView()
////        letterControl.addTarget(self, action: #selector(selectedLetter), for: .valueChanged)
//        //Расположение контрола
//        NSLayoutConstraint.activate([
////            letterControl.topAnchor.constraint(equalTo: tableView.topAnchor), //привязка к верхней границе tableView
////            letterControl.bottomAnchor.constraint(equalTo: tableView.bottomAnchor), //привязка к нижней границе tableView
//            letterControl.centerYAnchor.constraint(equalTo: tableView.centerYAnchor), //центрирование по Y
//            letterControl.heightAnchor.constraint(equalToConstant: 200), //высота контрола
////            letterControl.trailingAnchor.constraint(equalTo: tableView.trailingAnchor, constant: <#T##CGFloat#>), //привязка к границе (правая/левая) tableView
//            letterControl.widthAnchor.constraint(equalToConstant: 30), //ширина контрола
//
//            ])
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//    }
//    @objc func selectedLetter () {
//        let letter = letterControl.selectedLetter
//        let userIndex = friends.firstIndex { (user) -> Bool in
//            return String(user.userName.prefix(1)) == letter
//        }
//        guard let index = userIndex else {
//            return
//        }
//        tableView.scrollToRow(at: IndexPath(row: index, section: 0), at: .top, animated: true)
    }
        
        // MARK: - Table view data source

    override func viewWillAppear(_ animated: Bool) {
//        animateTable()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if filtering {
            return 1
        } else {
            return friendSections.count
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if filtering {
            return filteredFriends.count
        }
        return friendSections[section].items.count
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? { friendSections.map { $0.title } }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyFriendsTableViewCell
//        else { return UITableViewCell() }
        var friends: Users
        if filtering {
            friends = filteredFriends[indexPath.row]
        } else {
            friends = friendSections[indexPath.section].items[indexPath.row]
        }
        cell!.myFriendsLabel.text = friends.userName
        cell!.avatarImage.image = friends.userAvatar

        return cell!
    }
    
    
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            friends.count
//        }
    
    //Создание header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 10.0))
        view.backgroundColor = .systemGray5
        let label = UILabel(frame: CGRect(x: 45, y: 5, width: tableView.frame.width - 10, height: 20.0))
        label.font = UIFont(name: "Avenir Next Medium", size: 17.0)
        label.text = friendSections[section].title
        view.addSubview(label)
        return view

//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyFriendsTableViewCell {
//               cell.myFriendsLabel.text = friends[indexPath.row].userName
//               cell.avatarImage.image = friends[indexPath.row].userAvatar
//
//
//                    return cell
//            }
                
//           return UITableViewCell()
//    }
}
}
