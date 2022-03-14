//
//  ResponseModels.swift
//  Restaurant
//
//  Created by Edgar Karapetyan on 14.02.22.
//

import Foundation

struct MenuResponse: Codable {
    let menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
    
    enum CodingKeys: String, CodingKey {
        case menuItems = "items"
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
