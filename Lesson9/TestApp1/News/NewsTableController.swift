//
//  NewsTableController.swift
//  TestApp1
//
//  Created by Danil G. on 05.02.2021.
//

import UIKit

class NewsTableController: UITableViewController {

    let myFriends = Friends.makeFriends()
    let news = NewsClass.makeNews()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return myFriends.count
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 4
//    }
//
//    let numberOfRows = 4
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        switch numberOfRows {
//        case 4:
//            if indexPath.row == 0 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileNewsCell") as! ProfileNewsCell
//                cell.profileNewsImage.image = myFriends[indexPath.section].userAvatar
//                cell.profileNewsName.text = myFriends[indexPath.section].userName
//                cell.profileNewsTimeStamp.text = getRandomTime(month: 12)
//                return cell
//            } else if indexPath.row == 1 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "TextNewsCell") as! TextNewsCell
//                cell.textNews.text = news[indexPath.section].newsText
//                return cell
//            } else if indexPath.row == 2 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "ImageNewsCell") as! ImageNewsCell
//                cell.imageNews.image = news[indexPath.section].newsImage
//                return cell
//            } else if indexPath.row == 3 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "ActionsNewsCell") as! ActionsNewsCell
//                let viewsCount = Int.random(in: 0...99)
//                cell.actionsNewsViewCounter.textColor = viewsCount == 0 ? .black : .systemBlue
//                cell.actionsNewsViewSign.tintColor = viewsCount == 0 ? .black : .systemBlue
//                cell.actionsNewsViewCounter.text = String(viewsCount)
//                return cell
//            }
//        case 3:
//            if indexPath.row == 0 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileNewsCell") as! ProfileNewsCell
//                cell.profileNewsImage.image = myFriends[indexPath.section].userAvatar
//                cell.profileNewsName.text = myFriends[indexPath.section].userName
//                cell.profileNewsTimeStamp.text = getRandomTime(month: 12)
//                return cell
//            } else if indexPath.row == 1 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "TextNewsCell") as! TextNewsCell
//                cell.textNews.text = news[indexPath.section].newsText
//                return cell
//            } else if indexPath.row == 2 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "ActionsNewsCell") as! ActionsNewsCell
//                let viewsCount = Int.random(in: 0...99)
//                cell.actionsNewsViewCounter.textColor = viewsCount == 0 ? .black : .systemBlue
//                cell.actionsNewsViewSign.tintColor = viewsCount == 0 ? .black : .systemBlue
//                cell.actionsNewsViewCounter.text = String(viewsCount)
//                return cell
//            }
//        case 2:
//            if indexPath.row == 0 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileNewsCell") as! ProfileNewsCell
//                cell.profileNewsImage.image = myFriends[indexPath.section].userAvatar
//                cell.profileNewsName.text = myFriends[indexPath.section].userName
//                cell.profileNewsTimeStamp.text = getRandomTime(month: 12)
//                return cell
//            } else if indexPath.row == 1 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "ImageNewsCell") as! ImageNewsCell
//                cell.imageNews.image = news[indexPath.section].newsImage
//                return cell
//            } else if indexPath.row == 2 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "ActionsNewsCell") as! ActionsNewsCell
//                let viewsCount = Int.random(in: 0...99)
//                cell.actionsNewsViewCounter.textColor = viewsCount == 0 ? .black : .systemBlue
//                cell.actionsNewsViewSign.tintColor = viewsCount == 0 ? .black : .systemBlue
//                cell.actionsNewsViewCounter.text = String(viewsCount)
//                return cell
//            }
//        default:
//            return UITableViewCell()
//        }
//        return UITableViewCell()
//    }
//
//}
