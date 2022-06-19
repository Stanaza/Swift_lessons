//
//  RevenueViewController.swift
//  lesson-5
//
//  Created by Egor on 19.06.2022.
//

import UIKit


class RevenueViewController: UIViewController {
    
    @IBOutlet weak var revenueLabel: UILabel!
    @IBOutlet weak var stockTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stockTableView.delegate = self
        stockTableView.dataSource = self
    }
    
    @IBAction func updateReport(_ sender: UIButton) {
        refreshRevenueValue()
        sender.push()
        stockTableView.reloadData()
    }
    @IBAction func resetRevenueActionButton(_ sender: UIButton) {
        Manager.shared.revenue = 0
        refreshRevenueValue()
        sender.push()
    }
    
    func refreshRevenueValue() {
        revenueLabel.text = "\(Manager.shared.revenue) $"
    }
}

extension RevenueViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Manager.shared.beers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = (stockTableView.dequeueReusableCell(withIdentifier: BeerTableViewCell.id, for: indexPath) as? BeerTableViewCell) else {
            fatalError()
        }
        
        let currentBeer = Manager.shared.beers[indexPath.row]
        cell.beerNameLabel.text = currentBeer.name
        cell.beerCountryLabel.text = currentBeer.country
        cell.beerCostLabel.text = "\(currentBeer.price) $"
        cell.beersInStockLabel.text = String(currentBeer.quantity)
        return cell
    }
}
