//
//  Beer.swift
//  lesson-5
//
//  Created by Egor on 18.06.2022.
//

import UIKit

class Beer {
    
    let name: String
    let price: Int
    let country: String
    var quantity: Int
    
    init(name: String, price: Int, country: String, quantity: Int) {
        self.name = name
        self.price = price
        self.country = country
        self.quantity = quantity
    }
}

final class Manager {
    static let shared = Manager()
    
    var revenue: Int = 0
    var beers = [Beer(name: "Guinness", price: 6, country: "Ireland", quantity: 20), Beer(name: "Heineken", price: 4, country: "Germany", quantity: 25), Beer(name: "Grimbergen", price: 6, country: "Belgium", quantity: 100), Beer(name: "Leffe", price: 5, country: "Belgium", quantity: 5), Beer(name: "Corona", price: 7, country: "Mexico", quantity: 4), Beer(name: "Kriek", price: 9, country: "Belgium", quantity: 1), Beer(name: "Budweiser", price: 5, country: "USA", quantity: 8)]
    
    private init() {}
    
    func buyBeer(_ beer: Beer) {
        if beer.quantity != 0 {
            let selectedBeerIndex: Int! = beers.firstIndex(where: {$0 === beer})
            revenue += beer.price
            beers[selectedBeerIndex].quantity -= 1
        }
    }
}




