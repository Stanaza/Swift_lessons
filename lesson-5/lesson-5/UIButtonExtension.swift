//
//  UIButtonExtension.swift
//  lesson-5
//
//  Created by Egor on 19.06.2022.
//

import UIKit


extension UIButton {
    func push() {
        let transform = CASpringAnimation(keyPath: "transform.scale")
        transform.duration = 0.2
        transform.fromValue = 0.95
        transform.toValue = 1
        transform.autoreverses = true
        transform.repeatCount = 0.5
        transform.initialVelocity = 0.5
        transform.damping = 1.0
        
        layer.add(transform, forKey: nil)
    }
}
