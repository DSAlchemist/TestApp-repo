//
//  File.swift
//  TestApp1
//
//  Created by Danil G. on 05.02.2021.
//

import UIKit

extension UIButton {
    func animateAvatar(avatarAnimation: UIImageView) {
        let animation = CASpringAnimation(keyPath: "transform.scale")
        animation.fromValue = 0.6
        animation.toValue = 1.0
        animation.stiffness = 300.0
        animation.duration = 0.6
        avatarAnimation.layer.add(animation, forKey: nil)
    }
}
