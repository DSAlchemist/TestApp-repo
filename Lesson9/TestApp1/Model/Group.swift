//
//  Group.swift
//  TestApp1
//
//  Created by Danil G. on 14.01.2021.
//

import UIKit

struct AllGroupsSections {
    var title: String
    var items: [AllGroups]
    
}

struct AllGroups {
    let groupName: String
    let groupImage: UIImage?
}

final class Groups {
    static func makeGroups() -> [AllGroups] {
        let fourCh = AllGroups(groupName: "4ch", groupImage: UIImage(named: "g1"))
        let reddit = AllGroups(groupName: "Reddit", groupImage: UIImage(named: "g2"))
        let apple = AllGroups(groupName: "Apple", groupImage: UIImage(named: "g3"))
        let lepra = AllGroups(groupName: "Лепра", groupImage: UIImage(named: "g4"))
        let habr = AllGroups(groupName: "Habr", groupImage: UIImage(named: "g5"))
        return [fourCh, reddit, apple, lepra, habr]
    }
}
