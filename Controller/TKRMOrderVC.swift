//
//  TKRMOrderVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 24.09.23.
//

import UIKit

class TKRMOrderVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var orders: [Order] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        if let jsonOrders = "[{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"number\":\"Ordernumber\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"}]".data(using: .utf8) {
            do {
                let decoder = JSONDecoder()
                self.orders = try decoder.decode([Order].self, from: jsonOrders)
            } catch {
                print("Error parsing JSON: \(error)")
            }
        }
        print(orders)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension TKRMOrderVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderViewCell") as! TKRMOrderViewCell
        let order = orders[indexPath.row]
        cell.configureCellWithOrder(number: order.number, time: order.time, date: order.date)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "orderDetailsVC") as! TKRMOrderDetailsVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
