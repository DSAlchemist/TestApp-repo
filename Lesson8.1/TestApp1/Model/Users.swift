//
//  Users.swift
//  TestApp1
//
//  Created by Danil G. on 18.01.2021.
//

import UIKit

enum UserStatus: String, CaseIterable {
    case online = "В сети"
    case offline = "Не в сети"
    static func setRandomStatus() -> UserStatus {
        return UserStatus.allCases[Int.random(in: 0...1)]
    }
}

struct MyFriendsSections {
    var title: String
    var items: [Users]
    
}

struct Users {
    let userName: String
    let userAvatar: UIImage?
    let userImages: [UIImage?]
}

final class Friends {
    static func makeFriends() -> [Users] {
        let user1 = Users(userName: "Джон Шепард", userAvatar: UIImage(named: "Shepard4"), userImages: [UIImage(named: "Shepard1"), UIImage(named: "Shepard2"), UIImage(named: "Shepard3"), UIImage(named: "Shepard4"), UIImage(named: "Shepard5"), UIImage(named: "Shepard6")])
        let user2 = Users(userName: "Гаррус Вакариан", userAvatar: UIImage(named: "Vakarian3"), userImages: [UIImage(named: "Vakarian1"), UIImage(named: "Vakarian2"), UIImage(named: "Vakarian3"),UIImage(named: "Vakarian4")])
        let user3 = Users(userName: "Кайден Аленко", userAvatar: UIImage(named: "Alenko2"), userImages: [UIImage(named: "Alenko1"), UIImage(named: "Alenko2"), UIImage(named: "Alenko3")])
        let user4 = Users(userName: "Эшли Уильямс", userAvatar: UIImage(named: "Williams1"), userImages: [UIImage(named: "Williams1"), UIImage(named: "Williams2")])
        let user5 = Users(userName: "Тали'Зора нар Райя", userAvatar: UIImage(named: "Tali4"), userImages: [UIImage(named: "Tali2"), UIImage(named: "Tali3"), UIImage(named: "Tali4")])
        let user6 = Users(userName: "Лиара Т'Сони", userAvatar: UIImage(named: "Tsoni4"), userImages: [UIImage(named: "Tsoni2"), UIImage(named: "Tsoni3"), UIImage(named: "Tsoni4")])
        let user7 = Users(userName: "Урднот Рекс", userAvatar: UIImage(named: "Reks2"), userImages: [UIImage(named: "Reks1"), UIImage(named: "Reks2"), UIImage(named: "Reks3")])
        let user8 = Users(userName: "Джейкоб Тейлер", userAvatar: UIImage(named: "Taylor1"), userImages: [UIImage(named: "Taylor2")])
        let user9 = Users(userName: "Миранда Лоусон", userAvatar: UIImage(named: "Lowson1"), userImages: [UIImage(named: "Lowson1"), UIImage(named: "Lowson2"), UIImage(named: "Lowson3")])
        let user10 = Users(userName: "Легион", userAvatar: UIImage(named: "Legion2"), userImages: [UIImage(named: "Legion1"), UIImage(named: "Legion2"), UIImage(named: "Legion3")])
        let user11 = Users(userName: "Мордин Солус", userAvatar: UIImage(named: "Solus1"), userImages: [UIImage(named: "Solus"), UIImage(named: "Solus1")])
        let user12 = Users(userName: "Тейн Криос", userAvatar: UIImage(named: "Krios2"), userImages: [UIImage(named: "Krios1"), UIImage(named: "Krios2"), UIImage(named: "Krios3"), UIImage(named: "Krios4")])
        let user13 = Users(userName: "Джек", userAvatar: UIImage(named: "Jack1"), userImages: [UIImage(named: "Jack1"), UIImage(named: "Jack2")])
        
        return [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13]
   
                
       
    }
}
