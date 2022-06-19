//
//  TableViewCell.swift
//  lesson-5
//
//  Created by Egor on 19.06.2022.
//

import UIKit

class BeerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var beerNameLabel: UILabel!
    @IBOutlet weak var beerCountryLabel: UILabel!
    @IBOutlet weak var beerCostLabel: UILabel!
    @IBOutlet weak var beersInStockLabel: UILabel!
    static let id = "BeerTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
