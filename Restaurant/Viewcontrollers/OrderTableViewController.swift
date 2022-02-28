//
//  OrderTableViewController.swift
//  Restaurant
//
//  Created by Edgar Karapetyan on 14.02.22.
//

import UIKit

class OrderTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
        
        NotificationCenter.default.addObserver(tableView!,
               selector: #selector(UITableView.reloadData),
               name: MenuController.orderUpdatedNotification, object: nil)
    }
    
    // Mark: - Table View Data Sourse
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
    -> Int {
        MenuController.shared.order.menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
    -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Order", for: indexPath)
        configure(cell, forItemAt: indexPath)
        return cell
    }
    
    func configure(_ cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        let menuItem = MenuController.shared.order.menuItems[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = menuItem.name
        content.secondaryText = menuItem.price.formatted(.currency(code: "usd"))
        cell.contentConfiguration = content
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath)
    -> Bool {
        true
    }
    
    override func tableView(_ tableView: UITableView,
                            commit editingStyle: UITableViewCell.EditingStyle,
                            forRowAt indexPath: IndexPath
    ) {
        if editingStyle == .delete {
            MenuController.shared.order.menuItems.remove(at: indexPath.row)
        }
    }
}
