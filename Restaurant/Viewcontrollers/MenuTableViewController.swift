//
//  MenuTableViewController.swift
//  Restaurant
//
//  Created by Edgar Karapetyan on 14.02.22.
//

import UIKit

class MenuTableViewController: UITableViewController {

    let category: String
    
    init?(coder: NSCoder, category: String) {
        self.category = category
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init (coder:) has not been implemented")
    }
}
