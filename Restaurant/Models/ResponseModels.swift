//
//  ResponseModels.swift
//  Restaurant
//
//  Created by Edgar Karapetyan on 14.02.22.
//

import Foundation

struct MenuResponse: Codable {
    let menuItems: [MenItem]
    
    init(menuItems: [MenItem] = []) {
        self.menuItems = menuItems
    }
}

struct CategoriesResponse: Codable {
    let categories: [String]
}

struct OrderResponse: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
