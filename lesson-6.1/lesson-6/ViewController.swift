//
//  ViewController.swift
//  lesson-6
//
//  Created by Egor on 22.06.2022.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = button.frame.height / 2
        button.layer.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor
        button.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    func getRandomColor() -> CGColor {
            return UIColor(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1),
                alpha: .random(in: 0.5...1)
            ).cgColor
        }
    
    @objc func onClickButton() {
        button.isHidden = true
        button.frame = CGRect(x: CGFloat.random(in: 0...view.frame.width - button.frame.width), y: CGFloat.random(in: 0...view.frame.height - button.frame.height), width: 100, height: 100)
        button.layer.backgroundColor = getRandomColor()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            self.button.isHidden =  false
        }
    }
}

