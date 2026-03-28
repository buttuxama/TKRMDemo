//
//  TKRMWalletVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 06.09.23.
//

import UIKit

class TKRMWalletVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var transactions: [Transaction] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        if let jsonTransactions =
            """
            [
                {"name": "Item 1", "amount": 10.99},
                {"name": "Item 2", "amount": -0.49},
                {"name": "Item 2", "amount": 5.49},
                {"name": "Item 2", "amount": 5.49},
                {"name": "Item 2", "amount": 5.49},
                {"name": "Item 2", "amount": 5.49},
                {"name": "Item 2", "amount": 5.49},
            ]
            """.data(using: .utf8) {
            do {
                let decoder = JSONDecoder()
                self.transactions = try decoder.decode([Transaction].self, from: jsonTransactions)
            } catch {
                print("Error parsing JSON: \(error)")
            }
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension TKRMWalletVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "transactionViewCell") as! TKRMTransactionViewCell
        let transaction = transactions[indexPath.row]
        cell.configureCellWithTransaction(label: transaction.name, amount: transaction.amount)
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactions.count
    }
    
}
