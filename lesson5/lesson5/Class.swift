//
//  Class.swift
//  lesson5
//
//  Created by Egor on 16.06.2022.
//

import Foundation


struct Teacher {
    let name: String
    let age: Int
}


class User {
    let name: String
    let age: Int
    let adress: String
    
    init(name: String = "Alexander", age: Int = 5, adress: String) {
        self.name = name
        self.age = age
        self.adress = adress
    }
    
    deinit {
        print("deinit")
    }
}
