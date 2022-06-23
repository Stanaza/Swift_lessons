//
//  ViewController.swift
//  lesson-6.3
//
//  Created by Egor on 22.06.2022.
//

import UIKit

class ViewController: UIViewController {
    var circle = CALayer()
    let upButton = UIButton()
    let downButton = UIButton()
    let rightButton = UIButton()
    let leftButton = UIButton()
    
    var circleX: CGFloat = 0
    var circleY: CGFloat = 0
    
    let buttonSize: CGFloat = 60


    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleX = view.frame.width / 2 - buttonSize/2
        circleY = view.frame.height / 2 - buttonSize/2
        circle.frame = CGRect(x: circleX, y: circleY, width: buttonSize, height: buttonSize)
        
        circle.cornerRadius = circle.frame.height/2
        circle.backgroundColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        circle.zPosition = -1
        
        upButton.frame = CGRect(x: view.frame.width / 2 - buttonSize/2, y: buttonSize, width: buttonSize, height: buttonSize)
        
        
        downButton.frame = CGRect(x: view.frame.width / 2 - buttonSize/2, y: view.frame.height - buttonSize, width: buttonSize, height: buttonSize)
        
        upButton.setTitle("⬆️", for: .normal)
        
        upButton.layer.borderColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        
        downButton.setTitle("⬇️", for: .normal)
        
        downButton.layer.borderColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        
        leftButton.frame = CGRect(x: buttonSize, y:  view.frame.height / 2 - buttonSize/2, width: buttonSize, height: buttonSize)
        leftButton.setTitle("⬅️", for: .normal)
        
        
        
        rightButton.frame = CGRect(x: view.frame.width - buttonSize*2, y:  view.frame.height / 2 - buttonSize/2, width: buttonSize, height: buttonSize)
        rightButton.setTitle("➡️", for: .normal)
        
        leftButton.addTarget(self, action: #selector(moveLeft), for: .touchUpInside)
        downButton.addTarget(self, action: #selector(moveDown), for: .touchUpInside)
        rightButton.addTarget(self, action: #selector(moveRight), for: .touchUpInside)
        upButton.addTarget(self, action: #selector(moveUp), for: .touchUpInside)
        
        view.addSubview(leftButton)
        view.addSubview(downButton)
        view.addSubview(upButton)
        view.addSubview(rightButton)
        view.layer.addSublayer(circle)
    }
    
    @objc func moveRight() {
        if circleX + buttonSize < view.frame.width {
            circleX += buttonSize
            circle.frame = CGRect(x: circleX, y: circleY, width: buttonSize, height: buttonSize)
        }
    }
    
    @objc func moveLeft() {
        if circleX > 0 {
            circleX -= buttonSize
            circle.frame = CGRect(x: circleX , y: circleY, width: buttonSize, height: buttonSize)
        }
    }
    
    @objc func moveUp() {
        if circleY > 0 {
            circleY -= buttonSize
            circle.frame = CGRect(x: circleX, y: circleY, width: buttonSize, height: buttonSize)
        }
    }
    
    @objc func moveDown() {
        if circleY + buttonSize <= view.frame.height {
            circleY += buttonSize
            print("circle \(circleY)")
            print("view \(view.frame.height)")
            circle.frame = CGRect(x: circleX, y: circleY, width: buttonSize, height: buttonSize)
        }
    }
    
}

