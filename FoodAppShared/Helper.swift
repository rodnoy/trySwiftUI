//
//  Helper.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 08/07/2021.
//

import Foundation

enum Categories {
    case burger, pasta, pizza, desserts
}

func filterData(foodDataSet: [Food], by category: Categories) -> [Food] {
    var filteredArray = [Food]()
    
    for food in foodDataSet {
        if food.category == category {
            filteredArray.append(food)
        }
    }
    
    return filteredArray
}

func categoryString (for category: Categories) -> String {
    switch category {
    case .pizza:
        return "Pizza"
    case .burger:
        return "Burger"
    case .pasta:
        return "Pasta"
    case .desserts:
        return "Desserts"
        
    }
}
