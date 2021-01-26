//
//  News.swift
//  TestApp1
//
//  Created by Danil G. on 26.01.2021.
//

import UIKit

struct News {
    let newsText: String?
    let newsImage: UIImage?
    
}

final class NewsClass {
    static func makeNews() -> [News] {
        let firstNew = News(newsText: "News", newsImage: UIImage(named: "n1"))
        let secondNew = News(newsText: "News", newsImage: UIImage(named: "n2"))
        let thirdNew = News(newsText: "News", newsImage: UIImage(named: "n3"))
        let fourthNew = News(newsText: "News", newsImage: UIImage(named: "n4"))
        let fifthNew = News(newsText: "News", newsImage: UIImage(named: "n5"))
        let sixthNew = News(newsText: "News", newsImage: UIImage(named: "n6"))
        let seventhNew = News(newsText: "News", newsImage: UIImage(named: "n7"))
        let eighthNew = News(newsText: "News", newsImage: UIImage(named: "n8"))
        let ninthNew = News(newsText: "News", newsImage: UIImage(named: "n9"))
        let tenthNew = News(newsText: "News", newsImage: UIImage(named: "n10"))
        return [firstNew, secondNew, thirdNew, fourthNew, fifthNew, sixthNew, seventhNew, eighthNew, ninthNew, tenthNew]
    }
}
