//
//  ViewController.swift
//  lesson-6.2
//
//  Created by Egor on 22.06.2022.
//

import UIKit

class ViewController: UIViewController {
    var button = UIButton()
    var squareSize: CGFloat = CGFloat()
    var squareX: CGFloat = 0
    var squareY: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calcSquareSize(view.frame.width)
        button = UIButton(frame: CGRect(x: view.frame.width/2 - 75, y: view.frame.height - 100, width: 150, height: 50))
        button.layer.backgroundColor = UIColor.purple.cgColor
        button.setTitle("Add square", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(addSquare), for: .touchUpInside)
      
        view.addSubview(button)
    }
    
    func calcSquareSize(_ viewWidth: CGFloat) {
        let width = Int(viewWidth)
        if width.isMultiple(of: 2) {
            squareSize = viewWidth/6.0
        } else {
            squareSize = viewWidth/7.0
        }
    }
    
    func randomColor() -> CGColor {
            return UIColor(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1),
                alpha: 1
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

