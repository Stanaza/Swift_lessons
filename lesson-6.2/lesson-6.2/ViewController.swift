//
//  ViewController.swift
//  lesson-6.2
//
//  Created by Egor on 22.06.2022.
//

import UIKit

class ViewController: UIViewController {
    var button = UIButton()
    var squareSize: CGFloat = 100
    var squareX: CGFloat = 0
    var squareY: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button = UIButton(frame: CGRect(x: view.bounds.width/2 - 50, y: view.bounds.height - 100, width: 100, height: 30))
        button.layer.backgroundColor = UIColor.red.cgColor
        button.setTitle("Add square", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(addSquare), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func randomColor() -> CGColor {
            return UIColor(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1),
                alpha: .random(in: 0...0.7)
            ).cgColor
        }
    
    @objc func addSquare() {
        if squareY > view.frame.height {
            button.removeTarget(self, action: #selector(addSquare), for: .touchUpInside)
            return
        }
        let square = CALayer()
        square.frame = CGRect(x: squareX, y: squareY, width: squareSize, height: squareSize)
        squareX += squareSize

        if squareX >= view.frame.width {
            squareY += squareSize
            squareX = 0
        }
        square.backgroundColor = randomColor()
        square.zPosition = -1
        view.layer.addSublayer(square)
    }
}

