//
//  ViewController.swift
//  lesson5
//
//  Created by Egor on 16.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let user = User(name: "Mina", age: 24, adress: "home" )
        print(user.name)
        print(user)
    }
}

