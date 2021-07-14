//
//  PaymentTableViewController.swift
//  Pizza
//
//  Created by Клим on 14.07.2021.
//

import UIKit

class PaymentTableViewController: UITableViewController {
    
    var fullOrder: [String?] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Ваш заказ"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return  fullOrder.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pay", for: indexPath)
        cell.textLabel?.text = fullOrder[indexPath.row]
  

        return cell
    }

}
