import UIKit


class BeerOrderViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var beerPicker: UIPickerView!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var buyBeerButton: UIButton!
    
    var selectedBeer: Beer = Beer(name: String(), price: Int(), country: String(), quantity: Int())
    var beers = Manager.shared.beers
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beerPicker.delegate = self
        beerPicker.dataSource = self
        beerPicker.selectRow(beers.count/2, inComponent: 0, animated: false)
        selectedBeer = beers[beerPicker.selectedRow(inComponent: 0)]
        getBeerImage(selectedBeer.name)
        getTextForCostLabel(costValue: selectedBeer.price)
    }
    
    
    
    @IBAction func buyBeerActionButton(_ sender: UIButton) {
        Manager.shared.buyBeer(selectedBeer)
        sender.push()
        beerPicker.reloadComponent(0)
        if selectedBeer.quantity == 0 {
            buyBeerButton.isEnabled = false
        }
    }
    
    func getTextForCostLabel(costValue: Int) {
        costLabel.text = "\(costValue) $"
    }
    
    func getBeerImage(_ beerName: String) {
        beerImageView.image = UIImage(named: beerName)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let beer = beers[row]
        return "\(beer.name) (\(beer.country)) in stock: \(beer.quantity)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedBeer = beers[row]
        selectedBeer.quantity != 0 ? (buyBeerButton.isEnabled = true) :  (buyBeerButton.isEnabled = false)
        getBeerImage(selectedBeer.name)
        getTextForCostLabel(costValue: selectedBeer.price)
    }
}

