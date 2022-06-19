import UIKit


class ManagerViewController: UIViewController {
    @IBOutlet weak var revenueLabel: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
 func refreshBarRevenue() {
     revenueLabel.text = ("\(Manager.shared.revenue) $")
    }
    @IBAction func showRevenueActionButton(_ sender: UIButton) {
        print("show")
        refreshBarRevenue()
    }
    @IBAction func resetRevenueActionButton(_ sender: UIButton) {
        Manager.shared.revenue = 0
        refreshBarRevenue()
        print("reset")
    }
}
